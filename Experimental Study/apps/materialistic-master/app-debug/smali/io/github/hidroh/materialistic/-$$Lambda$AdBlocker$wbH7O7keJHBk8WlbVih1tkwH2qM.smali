.class public final synthetic Lio/github/hidroh/materialistic/-$$Lambda$AdBlocker$wbH7O7keJHBk8WlbVih1tkwH2qM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/hidroh/materialistic/-$$Lambda$AdBlocker$wbH7O7keJHBk8WlbVih1tkwH2qM;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lio/github/hidroh/materialistic/-$$Lambda$AdBlocker$wbH7O7keJHBk8WlbVih1tkwH2qM;->f$0:Landroid/content/Context;

    invoke-static {v0}, Lio/github/hidroh/materialistic/AdBlocker;->lambda$init$0(Landroid/content/Context;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
