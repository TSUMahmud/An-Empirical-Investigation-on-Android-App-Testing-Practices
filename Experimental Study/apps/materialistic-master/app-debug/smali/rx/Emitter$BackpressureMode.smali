.class public final enum Lrx/Emitter$BackpressureMode;
.super Ljava/lang/Enum;
.source "Emitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/Emitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BackpressureMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lrx/Emitter$BackpressureMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lrx/Emitter$BackpressureMode;

.field public static final enum BUFFER:Lrx/Emitter$BackpressureMode;

.field public static final enum DROP:Lrx/Emitter$BackpressureMode;

.field public static final enum ERROR:Lrx/Emitter$BackpressureMode;

.field public static final enum LATEST:Lrx/Emitter$BackpressureMode;

.field public static final enum NONE:Lrx/Emitter$BackpressureMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 64
    new-instance v0, Lrx/Emitter$BackpressureMode;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lrx/Emitter$BackpressureMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrx/Emitter$BackpressureMode;->NONE:Lrx/Emitter$BackpressureMode;

    .line 68
    new-instance v0, Lrx/Emitter$BackpressureMode;

    const-string v1, "ERROR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lrx/Emitter$BackpressureMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrx/Emitter$BackpressureMode;->ERROR:Lrx/Emitter$BackpressureMode;

    .line 72
    new-instance v0, Lrx/Emitter$BackpressureMode;

    const-string v1, "BUFFER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lrx/Emitter$BackpressureMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrx/Emitter$BackpressureMode;->BUFFER:Lrx/Emitter$BackpressureMode;

    .line 76
    new-instance v0, Lrx/Emitter$BackpressureMode;

    const-string v1, "DROP"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lrx/Emitter$BackpressureMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrx/Emitter$BackpressureMode;->DROP:Lrx/Emitter$BackpressureMode;

    .line 81
    new-instance v0, Lrx/Emitter$BackpressureMode;

    const-string v1, "LATEST"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lrx/Emitter$BackpressureMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrx/Emitter$BackpressureMode;->LATEST:Lrx/Emitter$BackpressureMode;

    .line 58
    const/4 v0, 0x5

    new-array v0, v0, [Lrx/Emitter$BackpressureMode;

    sget-object v1, Lrx/Emitter$BackpressureMode;->NONE:Lrx/Emitter$BackpressureMode;

    aput-object v1, v0, v2

    sget-object v1, Lrx/Emitter$BackpressureMode;->ERROR:Lrx/Emitter$BackpressureMode;

    aput-object v1, v0, v3

    sget-object v1, Lrx/Emitter$BackpressureMode;->BUFFER:Lrx/Emitter$BackpressureMode;

    aput-object v1, v0, v4

    sget-object v1, Lrx/Emitter$BackpressureMode;->DROP:Lrx/Emitter$BackpressureMode;

    aput-object v1, v0, v5

    sget-object v1, Lrx/Emitter$BackpressureMode;->LATEST:Lrx/Emitter$BackpressureMode;

    aput-object v1, v0, v6

    sput-object v0, Lrx/Emitter$BackpressureMode;->$VALUES:[Lrx/Emitter$BackpressureMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lrx/Emitter$BackpressureMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 58
    const-class v0, Lrx/Emitter$BackpressureMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lrx/Emitter$BackpressureMode;

    return-object v0
.end method

.method public static values()[Lrx/Emitter$BackpressureMode;
    .locals 1

    .line 58
    sget-object v0, Lrx/Emitter$BackpressureMode;->$VALUES:[Lrx/Emitter$BackpressureMode;

    invoke-virtual {v0}, [Lrx/Emitter$BackpressureMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/Emitter$BackpressureMode;

    return-object v0
.end method
