.class public abstract Lio/github/hidroh/materialistic/ThemedActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ThemedActivity.java"


# instance fields
.field private final mMenuTintDelegate:Lio/github/hidroh/materialistic/MenuTintDelegate;

.field private mPendingThemeChanged:Z

.field private mResumed:Z

.field private final mThemeObservable:Lio/github/hidroh/materialistic/Preferences$Observable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 32
    new-instance v0, Lio/github/hidroh/materialistic/MenuTintDelegate;

    invoke-direct {v0}, Lio/github/hidroh/materialistic/MenuTintDelegate;-><init>()V

    iput-object v0, p0, Lio/github/hidroh/materialistic/ThemedActivity;->mMenuTintDelegate:Lio/github/hidroh/materialistic/MenuTintDelegate;

    .line 33
    new-instance v0, Lio/github/hidroh/materialistic/Preferences$Observable;

    invoke-direct {v0}, Lio/github/hidroh/materialistic/Preferences$Observable;-><init>()V

    iput-object v0, p0, Lio/github/hidroh/materialistic/ThemedActivity;->mThemeObservable:Lio/github/hidroh/materialistic/Preferences$Observable;

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/github/hidroh/materialistic/ThemedActivity;->mResumed:Z

    return-void
.end method

.method public static synthetic lambda$onPostCreate$0(Lio/github/hidroh/materialistic/ThemedActivity;IZ)V
    .locals 0
    .param p1, "key"    # I
    .param p2, "contextChanged"    # Z

    .line 48
    invoke-direct {p0, p1}, Lio/github/hidroh/materialistic/ThemedActivity;->onThemeChanged(I)V

    return-void
.end method

.method private onThemeChanged(I)V
    .locals 2
    .param p1, "key"    # I

    .line 95
    const v0, 0x7f1000ce

    if-ne p1, v0, :cond_0

    .line 96
    invoke-static {p0}, Lio/github/hidroh/materialistic/Preferences$Theme;->getAutoDayNightMode(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegate;->setDefaultNightMode(I)V

    .line 98
    :cond_0
    iget-boolean v0, p0, Lio/github/hidroh/materialistic/ThemedActivity;->mResumed:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 99
    invoke-static {p0, v1}, Lio/github/hidroh/materialistic/AppUtils;->restart(Landroid/app/Activity;Z)V

    goto :goto_0

    .line 101
    :cond_1
    iput-boolean v1, p0, Lio/github/hidroh/materialistic/ThemedActivity;->mPendingThemeChanged:Z

    .line 103
    :goto_0
    return-void
.end method


# virtual methods
.method protected isDialogTheme()Z
    .locals 1

    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method protected isTranslucent()Z
    .locals 1

    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 39
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/ThemedActivity;->isDialogTheme()Z

    move-result v0

    invoke-virtual {p0}, Lio/github/hidroh/materialistic/ThemedActivity;->isTranslucent()Z

    move-result v1

    invoke-static {p0, v0, v1}, Lio/github/hidroh/materialistic/Preferences$Theme;->apply(Landroid/content/Context;ZZ)V

    .line 40
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/github/hidroh/materialistic/ThemedActivity;->setTaskTitle(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v0, p0, Lio/github/hidroh/materialistic/ThemedActivity;->mMenuTintDelegate:Lio/github/hidroh/materialistic/MenuTintDelegate;

    invoke-virtual {v0, p0}, Lio/github/hidroh/materialistic/MenuTintDelegate;->onActivityCreated(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .line 55
    iget-object v0, p0, Lio/github/hidroh/materialistic/ThemedActivity;->mMenuTintDelegate:Lio/github/hidroh/materialistic/MenuTintDelegate;

    invoke-virtual {v0, p1}, Lio/github/hidroh/materialistic/MenuTintDelegate;->onOptionsMenuCreated(Landroid/view/Menu;)V

    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .line 76
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 77
    iget-object v0, p0, Lio/github/hidroh/materialistic/ThemedActivity;->mThemeObservable:Lio/github/hidroh/materialistic/Preferences$Observable;

    invoke-virtual {v0, p0}, Lio/github/hidroh/materialistic/Preferences$Observable;->unsubscribe(Landroid/content/Context;)V

    .line 78
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 70
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/github/hidroh/materialistic/ThemedActivity;->mResumed:Z

    .line 72
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 47
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 48
    iget-object v0, p0, Lio/github/hidroh/materialistic/ThemedActivity;->mThemeObservable:Lio/github/hidroh/materialistic/Preferences$Observable;

    new-instance v1, Lio/github/hidroh/materialistic/-$$Lambda$ThemedActivity$yRWb_8qaku3viPZr1xgdPXpXmuQ;

    invoke-direct {v1, p0}, Lio/github/hidroh/materialistic/-$$Lambda$ThemedActivity$yRWb_8qaku3viPZr1xgdPXpXmuQ;-><init>(Lio/github/hidroh/materialistic/ThemedActivity;)V

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {v0, p0, v1, v2}, Lio/github/hidroh/materialistic/Preferences$Observable;->subscribe(Landroid/content/Context;Lio/github/hidroh/materialistic/Preferences$Observer;[I)V

    .line 50
    return-void

    :array_0
    .array-data 4
        0x7f100123
        0x7f1000ce
    .end array-data
.end method

.method protected onResume()V
    .locals 1

    .line 61
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/github/hidroh/materialistic/ThemedActivity;->mResumed:Z

    .line 63
    iget-boolean v0, p0, Lio/github/hidroh/materialistic/ThemedActivity;->mPendingThemeChanged:Z

    if-eqz v0, :cond_0

    .line 64
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lio/github/hidroh/materialistic/AppUtils;->restart(Landroid/app/Activity;Z)V

    .line 66
    :cond_0
    return-void
.end method

.method setTaskTitle(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 106
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Landroid/app/ActivityManager$TaskDescription;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 108
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080069

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    const v3, 0x7f040093

    .line 109
    invoke-static {p0, v3}, Lio/github/hidroh/materialistic/AppUtils;->getThemedResId(Landroid/content/Context;I)I

    move-result v3

    invoke-static {p0, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    .line 107
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    .line 111
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 82
    invoke-super {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 83
    invoke-virtual {p0, p1}, Lio/github/hidroh/materialistic/ThemedActivity;->setTaskTitle(Ljava/lang/CharSequence;)V

    .line 84
    return-void
.end method
