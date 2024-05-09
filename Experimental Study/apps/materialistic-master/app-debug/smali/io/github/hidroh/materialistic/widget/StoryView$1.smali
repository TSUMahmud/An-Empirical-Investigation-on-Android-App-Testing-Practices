.class Lio/github/hidroh/materialistic/widget/StoryView$1;
.super Ljava/lang/Object;
.source "StoryView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/hidroh/materialistic/widget/StoryView;->animateVote(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/github/hidroh/materialistic/widget/StoryView;

.field final synthetic val$newScore:I


# direct methods
.method constructor <init>(Lio/github/hidroh/materialistic/widget/StoryView;I)V
    .locals 0
    .param p1, "this$0"    # Lio/github/hidroh/materialistic/widget/StoryView;

    .line 255
    iput-object p1, p0, Lio/github/hidroh/materialistic/widget/StoryView$1;->this$0:Lio/github/hidroh/materialistic/widget/StoryView;

    iput p2, p0, Lio/github/hidroh/materialistic/widget/StoryView$1;->val$newScore:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 6
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 263
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/StoryView$1;->this$0:Lio/github/hidroh/materialistic/widget/StoryView;

    iget-object v1, v1, Lio/github/hidroh/materialistic/widget/StoryView;->mVoteSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lio/github/hidroh/materialistic/widget/-$$Lambda$LLyg5VUrXhBQ-7pOdKbPl4KJE4M;

    invoke-direct {v2, v1}, Lio/github/hidroh/materialistic/widget/-$$Lambda$LLyg5VUrXhBQ-7pOdKbPl4KJE4M;-><init>(Landroid/widget/ViewSwitcher;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 264
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryView$1;->this$0:Lio/github/hidroh/materialistic/widget/StoryView;

    iget-object v1, v0, Lio/github/hidroh/materialistic/widget/StoryView;->mScoreTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v2, p0, Lio/github/hidroh/materialistic/widget/StoryView$1;->val$newScore:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 265
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x7f0f0002

    invoke-virtual {v0, v4, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 264
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/StoryView$1;->this$0:Lio/github/hidroh/materialistic/widget/StoryView;

    iget-object v0, v0, Lio/github/hidroh/materialistic/widget/StoryView;->mVoteSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getInAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 267
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 272
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 259
    return-void
.end method
