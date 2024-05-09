.class Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$8;
.super Landroid/view/animation/Animation;
.source "SwipeRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->startScaleDownReturnToStartAnimation(ILandroid/view/animation/Animation$AnimationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;


# direct methods
.method constructor <init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 1152
    iput-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$8;->this$0:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .line 1155
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$8;->this$0:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iget v1, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mStartingScale:F

    neg-float v2, v1

    mul-float v2, v2, p1

    add-float/2addr v1, v2

    .line 1156
    .local v1, "targetScale":F
    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setAnimationProgress(F)V

    .line 1157
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$8;->this$0:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->moveToStart(F)V

    .line 1158
    return-void
.end method
