.class Lio/github/hidroh/materialistic/widget/NavFloatingActionButton$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "NavFloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;->bindNavigationPad()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;


# direct methods
.method constructor <init>(Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;)V
    .locals 0
    .param p1, "this$0"    # Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;

    .line 124
    iput-object p1, p0, Lio/github/hidroh/materialistic/widget/NavFloatingActionButton$1;->this$0:Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 139
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/NavFloatingActionButton$1;->this$0:Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;->trackKonami(I)Z

    .line 140
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 127
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/NavFloatingActionButton$1;->this$0:Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;

    iget-object v0, v0, Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;->mNavigable:Lio/github/hidroh/materialistic/Navigable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
    .param p2, "motionEvent1"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .line 147
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 148
    cmpg-float v0, p3, v3

    if-gez v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0

    .line 151
    :cond_1
    cmpg-float v0, p4, v3

    if-gez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 154
    .local v0, "direction":I
    :goto_0
    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/NavFloatingActionButton$1;->this$0:Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;

    iget-object v1, v1, Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;->mNavigable:Lio/github/hidroh/materialistic/Navigable;

    invoke-interface {v1, v0}, Lio/github/hidroh/materialistic/Navigable;->onNavigate(I)V

    .line 155
    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/NavFloatingActionButton$1;->this$0:Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;

    iget-boolean v3, v1, Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;->mVibrationEnabled:Z

    if-eqz v3, :cond_3

    .line 156
    iget-object v1, v1, Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v3, 0xf

    invoke-virtual {v1, v3, v4}, Landroid/os/Vibrator;->vibrate(J)V

    .line 158
    :cond_3
    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/NavFloatingActionButton$1;->this$0:Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;

    invoke-virtual {v1, v0}, Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;->trackKonami(I)Z

    .line 159
    return v2
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 164
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/NavFloatingActionButton$1;->this$0:Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;

    iget-object v1, v0, Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;->mNavigable:Lio/github/hidroh/materialistic/Navigable;

    if-nez v1, :cond_0

    .line 165
    return-void

    .line 167
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;->startDrag(FF)V

    .line 168
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 132
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/NavFloatingActionButton$1;->this$0:Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    const v2, 0x7f100083

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 134
    return v1
.end method
