.class Lio/github/hidroh/materialistic/data/ReadabilityClient$Impl$Readable;
.super Ljava/lang/Object;
.source "ReadabilityClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/hidroh/materialistic/data/ReadabilityClient$Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Readable"
.end annotation


# instance fields
.field content:Ljava/lang/String;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field final synthetic this$0:Lio/github/hidroh/materialistic/data/ReadabilityClient$Impl;


# direct methods
.method constructor <init>(Lio/github/hidroh/materialistic/data/ReadabilityClient$Impl;)V
    .locals 0
    .param p1, "this$0"    # Lio/github/hidroh/materialistic/data/ReadabilityClient$Impl;

    .line 66
    iput-object p1, p0, Lio/github/hidroh/materialistic/data/ReadabilityClient$Impl$Readable;->this$0:Lio/github/hidroh/materialistic/data/ReadabilityClient$Impl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
