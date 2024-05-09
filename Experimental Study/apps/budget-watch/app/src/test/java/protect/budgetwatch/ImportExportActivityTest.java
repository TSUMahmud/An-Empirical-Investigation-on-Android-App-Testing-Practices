package protect.budgetwatch;

import android.app.Activity;
import android.content.ContentResolver;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.view.View;
import android.widget.Button;
import android.widget.Spinner;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.Robolectric;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.annotation.Config;
import org.robolectric.shadow.api.Shadow;
import org.robolectric.shadows.ShadowActivity;
import org.robolectric.shadows.ShadowContentResolver;
import org.robolectric.shadows.ShadowLog;
import org.robolectric.shadows.ShadowPackageManager;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Set;

import static org.junit.Assert.assertNotNull;
import static org.robolectric.Shadows.shadowOf;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;
import static org.junit.Assert.assertNull;

@RunWith(RobolectricTestRunner.class)
@Config(constants = BuildConfig.class, sdk = 25)
public class ImportExportActivityTest
{
    private Activity activity;
    private DBHelper db;
    private File sdcardDir;

    @Before
    public void setUp()
    {
        // Output logs emitted during tests so they may be accessed
        ShadowLog.stream = System.out;

        activity = Robolectric.setupActivity(ImportExportActivity.class);
        db = new DBHelper(activity);
        sdcardDir = Environment.getExternalStorageDirectory();
    }

    private void registerIntentHandler(String handler)
    {
        // Add something that will 'handle' the given intent type
        ShadowPackageManager shadowPackageManager = shadowOf(RuntimeEnvironment.application.getPackageManager());

        ResolveInfo info = new ResolveInfo();
        info.isDefault = true;

        ApplicationInfo applicationInfo = new ApplicationInfo();
        applicationInfo.packageName = "does.not.matter";
        info.activityInfo = new ActivityInfo();
        info.activityInfo.applicationInfo = applicationInfo;
        info.activityInfo.name = "DoesNotMatter";
        info.activityInfo.exported = true;

        Intent intent = new Intent(handler);

        if(handler.equals(Intent.ACTION_GET_CONTENT))
        {
            intent.addCategory(Intent.CATEGORY_OPENABLE);
            intent.setType("*/*");
        }

        shadowPackageManager.addResolveInfoForIntent(intent, info);
    }

    private void checkVisibility(Activity activity, Integer state, Integer divider, Integer title,
                                 Integer message, Integer label, Integer spinner, Integer button)
    {
        View dividerView = activity.findViewById(divider);
        assertEquals(state.intValue(), dividerView.getVisibility());

        View titleView = activity.findViewById(title);
        assertEquals(state.intValue(), titleView.getVisibility());

        View messageView = activity.findViewById(message);
        assertEquals(state.intValue(), messageView.getVisibility());

        if(label != null)
        {
            View labelView = activity.findViewById(label);
            assertEquals(state.intValue(), labelView.getVisibility());
        }

        if(spinner != null)
        {
            View spinnerView = activity.findViewById(spinner);
            assertEquals(state.intValue(), spinnerView.getVisibility());
        }

        View buttonView = activity.findViewById(button);
        assertEquals(state.intValue(), buttonView.getVisibility());
    }

    @Test
    public void testImportFilesystemOption()
    {
        for(boolean isInstalled : new Boolean[]{false, true})
        {
            int visibility = isInstalled ? View.VISIBLE : View.GONE;

            if(isInstalled)
            {
                registerIntentHandler(Intent.ACTION_PICK);
            }

            Activity activity = Robolectric.setupActivity(ImportExportActivity.class);

            checkVisibility(activity, visibility, R.id.dividerImportFilesystem,
                    R.id.importOptionFilesystemTitle, R.id.importOptionFilesystemExplanation,
                    null, null, R.id.importOptionFilesystemButton);

            // Should always be gone, as its provider is never installed
            checkVisibility(activity, View.GONE, R.id.dividerImportApplication,
                    R.id.importOptionApplicationTitle, R.id.importOptionApplicationExplanation,
                    null, null, R.id.importOptionApplicationButton);

            // Import from file system should always be present

            checkVisibility(activity, View.VISIBLE, R.id.dividerImportFixed,
                    R.id.importOptionFixedTitle, R.id.importOptionFixedExplanation,
                    R.id.importOptionFixedFileFormatSpinnerLabel, R.id.importFileFormatSpinner,
                    R.id.importOptionFixedButton);
        }
    }

    @Test
    public void testImportApplicationOption()
    {
        for(boolean isInstalled : new Boolean[]{false, true})
        {
            int visibility = isInstalled ? View.VISIBLE : View.GONE;

            if(isInstalled)
            {
                registerIntentHandler(Intent.ACTION_GET_CONTENT);
            }

            Activity activity = Robolectric.setupActivity(ImportExportActivity.class);

            checkVisibility(activity, visibility, R.id.dividerImportApplication,
                    R.id.importOptionApplicationTitle, R.id.importOptionApplicationExplanation,
                    null, null, R.id.importOptionApplicationButton);

            // Should always be gone, as its provider is never installed
            checkVisibility(activity, View.GONE, R.id.dividerImportFilesystem,
                    R.id.importOptionFilesystemTitle, R.id.importOptionFilesystemExplanation,
                    null, null, R.id.importOptionFilesystemButton);

            // Import from file system should always be present

            checkVisibility(activity, View.VISIBLE, R.id.dividerImportFixed,
                    R.id.importOptionFixedTitle, R.id.importOptionFixedExplanation,
                    R.id.importOptionFixedFileFormatSpinnerLabel, R.id.importFileFormatSpinner,
                    R.id.importOptionFixedButton);
        }
    }

    @Test
    public void testAllOptionsAvailable()
    {
        registerIntentHandler(Intent.ACTION_PICK);
        registerIntentHandler(Intent.ACTION_GET_CONTENT);

        Activity activity = Robolectric.setupActivity(ImportExportActivity.class);

        checkVisibility(activity, View.VISIBLE, R.id.dividerImportApplication,
                R.id.importOptionApplicationTitle, R.id.importOptionApplicationExplanation,
                null, null, R.id.importOptionApplicationButton);

        checkVisibility(activity, View.VISIBLE, R.id.dividerImportFilesystem,
                R.id.importOptionFilesystemTitle, R.id.importOptionFilesystemExplanation,
                null, null, R.id.importOptionFilesystemButton);

        checkVisibility(activity, View.VISIBLE, R.id.dividerImportFixed,
                R.id.importOptionFixedTitle, R.id.importOptionFixedExplanation,
                R.id.importOptionFixedFileFormatSpinnerLabel, R.id.importFileFormatSpinner,
                R.id.importOptionFixedButton);
    }

}
