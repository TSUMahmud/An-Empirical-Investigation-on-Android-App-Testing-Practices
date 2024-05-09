.class public abstract Landroidx/appcompat/app/ActionBar;
.super Ljava/lang/Object;
.source "ActionBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/ActionBar$LayoutParams;,
        Landroidx/appcompat/app/ActionBar$Tab;,
        Landroidx/appcompat/app/ActionBar$OnMenuVisibilityListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1368
    return-void
.end method


# virtual methods
.method public closeOptionsMenu()Z
    .locals 1

    .line 1074
    const/4 v0, 0x0

    return v0
.end method

.method public collapseActionView()Z
    .locals 1

    .line 1098
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchMenuVisibilityChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .line 1057
    return-void
.end method

.method public abstract getDisplayOptions()I
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 1

    .line 859
    const/4 v0, 0x0

    return-object v0
.end method

.method public invalidateOptionsMenu()Z
    .locals 1

    .line 1080
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 1052
    return-void
.end method

.method onDestroy()V
    .locals 0

    .line 1121
    return-void
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "ev"    # Landroid/view/KeyEvent;

    .line 1092
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 1086
    const/4 v0, 0x0

    return v0
.end method

.method public openOptionsMenu()Z
    .locals 1

    .line 1068
    const/4 v0, 0x0

    return v0
.end method

.method public setDefaultDisplayHomeAsUpEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 1042
    return-void
.end method

.method public abstract setDisplayOptions(I)V
.end method

.method public setHomeActionContentDescription(I)V
    .locals 0
    .param p1, "resId"    # I

    .line 950
    return-void
.end method

.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "indicator"    # Landroid/graphics/drawable/Drawable;

    .line 890
    return-void
.end method

.method public setShowHideAnimationEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 1047
    return-void
.end method

.method public abstract setSubtitle(I)V
.end method

.method public abstract setSubtitle(Ljava/lang/CharSequence;)V
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 1104
    return-void
.end method

.method public startActionMode(Landroidx/appcompat/view/ActionMode$Callback;)Landroidx/appcompat/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroidx/appcompat/view/ActionMode$Callback;

    .line 1062
    const/4 v0, 0x0

    return-object v0
.end method
