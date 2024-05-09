.class Lio/github/hidroh/materialistic/AppUtils$SystemUiHelper;
.super Ljava/lang/Object;
.source "AppUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/hidroh/materialistic/AppUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SystemUiHelper"
.end annotation


# instance fields
.field private enabled:Z

.field private final originalUiFlags:I

.field private final window:Landroid/view/Window;


# direct methods
.method constructor <init>(Landroid/view/Window;)V
    .locals 1
    .param p1, "window"    # Landroid/view/Window;

    .line 650
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 648
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/github/hidroh/materialistic/AppUtils$SystemUiHelper;->enabled:Z

    .line 651
    iput-object p1, p0, Lio/github/hidroh/materialistic/AppUtils$SystemUiHelper;->window:Landroid/view/Window;

    .line 652
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    iput v0, p0, Lio/github/hidroh/materialistic/AppUtils$SystemUiHelper;->originalUiFlags:I

    .line 653
    return-void
.end method


# virtual methods
.method setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 673
    iput-boolean p1, p0, Lio/github/hidroh/materialistic/AppUtils$SystemUiHelper;->enabled:Z

    .line 674
    return-void
.end method

.method setFullscreen(Z)V
    .locals 2
    .param p1, "fullscreen"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 657
    iget-boolean v0, p0, Lio/github/hidroh/materialistic/AppUtils$SystemUiHelper;->enabled:Z

    if-nez v0, :cond_0

    .line 658
    return-void

    .line 660
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_1

    .line 661
    return-void

    .line 663
    :cond_1
    if-eqz p1, :cond_2

    .line 664
    iget-object v0, p0, Lio/github/hidroh/materialistic/AppUtils$SystemUiHelper;->window:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lio/github/hidroh/materialistic/AppUtils$SystemUiHelper;->originalUiFlags:I

    or-int/lit8 v1, v1, 0x2

    or-int/lit16 v1, v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 668
    :cond_2
    iget-object v0, p0, Lio/github/hidroh/materialistic/AppUtils$SystemUiHelper;->window:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lio/github/hidroh/materialistic/AppUtils$SystemUiHelper;->originalUiFlags:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 670
    :goto_0
    return-void
.end method
