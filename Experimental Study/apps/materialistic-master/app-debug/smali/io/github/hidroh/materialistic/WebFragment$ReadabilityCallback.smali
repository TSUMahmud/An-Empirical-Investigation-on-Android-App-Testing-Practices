.class Lio/github/hidroh/materialistic/WebFragment$ReadabilityCallback;
.super Ljava/lang/Object;
.source "WebFragment.java"

# interfaces
.implements Lio/github/hidroh/materialistic/data/ReadabilityClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/hidroh/materialistic/WebFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReadabilityCallback"
.end annotation


# instance fields
.field private final mReadabilityFragment:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lio/github/hidroh/materialistic/WebFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/github/hidroh/materialistic/WebFragment;)V
    .locals 1
    .param p1, "webFragment"    # Lio/github/hidroh/materialistic/WebFragment;

    .line 629
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 630
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/github/hidroh/materialistic/WebFragment$ReadabilityCallback;->mReadabilityFragment:Ljava/lang/ref/WeakReference;

    .line 631
    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/String;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .line 635
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment$ReadabilityCallback;->mReadabilityFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment$ReadabilityCallback;->mReadabilityFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/WebFragment;

    invoke-virtual {v0}, Lio/github/hidroh/materialistic/BaseFragment;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Lio/github/hidroh/materialistic/WebFragment$ReadabilityCallback;->mReadabilityFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/WebFragment;

    invoke-virtual {v0, p1}, Lio/github/hidroh/materialistic/WebFragment;->onParsed(Ljava/lang/String;)V

    .line 638
    :cond_0
    return-void
.end method
