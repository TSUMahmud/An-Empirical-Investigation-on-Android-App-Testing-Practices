.class Lio/github/hidroh/materialistic/widget/NavFloatingActionButton$3;
.super Ljava/lang/Object;
.source "NavFloatingActionButton.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;->startDrag(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;

.field final synthetic val$startX:F

.field final synthetic val$startY:F


# direct methods
.method constructor <init>(Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;FF)V
    .locals 0
    .param p1, "this$0"    # Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;

    .line 187
    iput-object p1, p0, Lio/github/hidroh/materialistic/widget/NavFloatingActionButton$3;->this$0:Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;

    iput p2, p0, Lio/github/hidroh/materialistic/widget/NavFloatingActionButton$3;->val$startX:F

    iput p3, p0, Lio/github/hidroh/materialistic/widget/NavFloatingActionButton$3;->val$startY:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 191
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 205
    const/4 v0, 0x0

    return v0

    .line 193
    :pswitch_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/NavFloatingActionButton$3;->this$0:Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;

    iput-boolean v1, v0, Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;->mMoved:Z

    .line 194
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v2, p0, Lio/github/hidroh/materialistic/widget/NavFloatingActionButton$3;->val$startX:F

    sub-float/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/view/View;->setX(F)V

    .line 195
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v2, p0, Lio/github/hidroh/materialistic/widget/NavFloatingActionButton$3;->val$startY:F

    sub-float/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/view/View;->setY(F)V

    .line 196
    goto :goto_0

    .line 199
    :pswitch_1
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/NavFloatingActionButton$3;->this$0:Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;

    invoke-virtual {v0}, Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;->bindNavigationPad()V

    .line 200
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/NavFloatingActionButton$3;->this$0:Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;

    iget-boolean v2, v0, Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;->mMoved:Z

    if-eqz v2, :cond_0

    .line 201
    invoke-virtual {v0}, Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;->persistPosition()V

    .line 207
    :cond_0
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
