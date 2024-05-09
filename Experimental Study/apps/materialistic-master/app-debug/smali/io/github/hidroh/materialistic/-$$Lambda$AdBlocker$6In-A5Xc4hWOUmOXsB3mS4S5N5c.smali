.class public final synthetic Lio/github/hidroh/materialistic/-$$Lambda$AdBlocker$6In-A5Xc4hWOUmOXsB3mS4S5N5c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lrx/functions/Func1;


# static fields
.field public static final synthetic INSTANCE:Lio/github/hidroh/materialistic/-$$Lambda$AdBlocker$6In-A5Xc4hWOUmOXsB3mS4S5N5c;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/github/hidroh/materialistic/-$$Lambda$AdBlocker$6In-A5Xc4hWOUmOXsB3mS4S5N5c;

    invoke-direct {v0}, Lio/github/hidroh/materialistic/-$$Lambda$AdBlocker$6In-A5Xc4hWOUmOXsB3mS4S5N5c;-><init>()V

    sput-object v0, Lio/github/hidroh/materialistic/-$$Lambda$AdBlocker$6In-A5Xc4hWOUmOXsB3mS4S5N5c;->INSTANCE:Lio/github/hidroh/materialistic/-$$Lambda$AdBlocker$6In-A5Xc4hWOUmOXsB3mS4S5N5c;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lio/github/hidroh/materialistic/AdBlocker;->lambda$init$1(Ljava/lang/Throwable;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
