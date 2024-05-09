.class public final synthetic Lio/github/hidroh/materialistic/widget/-$$Lambda$LLyg5VUrXhBQ-7pOdKbPl4KJE4M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/widget/ViewSwitcher;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/ViewSwitcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/hidroh/materialistic/widget/-$$Lambda$LLyg5VUrXhBQ-7pOdKbPl4KJE4M;->f$0:Landroid/widget/ViewSwitcher;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/-$$Lambda$LLyg5VUrXhBQ-7pOdKbPl4KJE4M;->f$0:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->showNext()V

    return-void
.end method
