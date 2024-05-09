.class public final synthetic Lio/github/hidroh/materialistic/data/-$$Lambda$HackerNewsClient$5QRbh4nF7NgobSrsZjQUZGspn9M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lrx/functions/Func0;


# instance fields
.field private final synthetic f$0:Lio/github/hidroh/materialistic/data/HackerNewsClient;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lio/github/hidroh/materialistic/data/HackerNewsClient;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/hidroh/materialistic/data/-$$Lambda$HackerNewsClient$5QRbh4nF7NgobSrsZjQUZGspn9M;->f$0:Lio/github/hidroh/materialistic/data/HackerNewsClient;

    iput-object p2, p0, Lio/github/hidroh/materialistic/data/-$$Lambda$HackerNewsClient$5QRbh4nF7NgobSrsZjQUZGspn9M;->f$1:Ljava/lang/String;

    iput p3, p0, Lio/github/hidroh/materialistic/data/-$$Lambda$HackerNewsClient$5QRbh4nF7NgobSrsZjQUZGspn9M;->f$2:I

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lio/github/hidroh/materialistic/data/-$$Lambda$HackerNewsClient$5QRbh4nF7NgobSrsZjQUZGspn9M;->f$0:Lio/github/hidroh/materialistic/data/HackerNewsClient;

    iget-object v1, p0, Lio/github/hidroh/materialistic/data/-$$Lambda$HackerNewsClient$5QRbh4nF7NgobSrsZjQUZGspn9M;->f$1:Ljava/lang/String;

    iget v2, p0, Lio/github/hidroh/materialistic/data/-$$Lambda$HackerNewsClient$5QRbh4nF7NgobSrsZjQUZGspn9M;->f$2:I

    invoke-static {v0, v1, v2}, Lio/github/hidroh/materialistic/data/HackerNewsClient;->lambda$getStories$0(Lio/github/hidroh/materialistic/data/HackerNewsClient;Ljava/lang/String;I)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
