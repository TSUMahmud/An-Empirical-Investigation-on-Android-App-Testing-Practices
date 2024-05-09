.class public final enum Lio/github/hidroh/materialistic/Preferences$SwipeAction;
.super Ljava/lang/Enum;
.source "Preferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/hidroh/materialistic/Preferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SwipeAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/github/hidroh/materialistic/Preferences$SwipeAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/github/hidroh/materialistic/Preferences$SwipeAction;

.field public static final enum None:Lio/github/hidroh/materialistic/Preferences$SwipeAction;

.field public static final enum Refresh:Lio/github/hidroh/materialistic/Preferences$SwipeAction;

.field public static final enum Save:Lio/github/hidroh/materialistic/Preferences$SwipeAction;

.field public static final enum Share:Lio/github/hidroh/materialistic/Preferences$SwipeAction;

.field public static final enum Vote:Lio/github/hidroh/materialistic/Preferences$SwipeAction;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 54
    new-instance v0, Lio/github/hidroh/materialistic/Preferences$SwipeAction;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/github/hidroh/materialistic/Preferences$SwipeAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/hidroh/materialistic/Preferences$SwipeAction;->None:Lio/github/hidroh/materialistic/Preferences$SwipeAction;

    .line 55
    new-instance v0, Lio/github/hidroh/materialistic/Preferences$SwipeAction;

    const-string v1, "Vote"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lio/github/hidroh/materialistic/Preferences$SwipeAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/hidroh/materialistic/Preferences$SwipeAction;->Vote:Lio/github/hidroh/materialistic/Preferences$SwipeAction;

    .line 56
    new-instance v0, Lio/github/hidroh/materialistic/Preferences$SwipeAction;

    const-string v1, "Save"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lio/github/hidroh/materialistic/Preferences$SwipeAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/hidroh/materialistic/Preferences$SwipeAction;->Save:Lio/github/hidroh/materialistic/Preferences$SwipeAction;

    .line 57
    new-instance v0, Lio/github/hidroh/materialistic/Preferences$SwipeAction;

    const-string v1, "Refresh"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lio/github/hidroh/materialistic/Preferences$SwipeAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/hidroh/materialistic/Preferences$SwipeAction;->Refresh:Lio/github/hidroh/materialistic/Preferences$SwipeAction;

    .line 58
    new-instance v0, Lio/github/hidroh/materialistic/Preferences$SwipeAction;

    const-string v1, "Share"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lio/github/hidroh/materialistic/Preferences$SwipeAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/hidroh/materialistic/Preferences$SwipeAction;->Share:Lio/github/hidroh/materialistic/Preferences$SwipeAction;

    .line 53
    const/4 v0, 0x5

    new-array v0, v0, [Lio/github/hidroh/materialistic/Preferences$SwipeAction;

    sget-object v1, Lio/github/hidroh/materialistic/Preferences$SwipeAction;->None:Lio/github/hidroh/materialistic/Preferences$SwipeAction;

    aput-object v1, v0, v2

    sget-object v1, Lio/github/hidroh/materialistic/Preferences$SwipeAction;->Vote:Lio/github/hidroh/materialistic/Preferences$SwipeAction;

    aput-object v1, v0, v3

    sget-object v1, Lio/github/hidroh/materialistic/Preferences$SwipeAction;->Save:Lio/github/hidroh/materialistic/Preferences$SwipeAction;

    aput-object v1, v0, v4

    sget-object v1, Lio/github/hidroh/materialistic/Preferences$SwipeAction;->Refresh:Lio/github/hidroh/materialistic/Preferences$SwipeAction;

    aput-object v1, v0, v5

    sget-object v1, Lio/github/hidroh/materialistic/Preferences$SwipeAction;->Share:Lio/github/hidroh/materialistic/Preferences$SwipeAction;

    aput-object v1, v0, v6

    sput-object v0, Lio/github/hidroh/materialistic/Preferences$SwipeAction;->$VALUES:[Lio/github/hidroh/materialistic/Preferences$SwipeAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/github/hidroh/materialistic/Preferences$SwipeAction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 53
    const-class v0, Lio/github/hidroh/materialistic/Preferences$SwipeAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/Preferences$SwipeAction;

    return-object v0
.end method

.method public static values()[Lio/github/hidroh/materialistic/Preferences$SwipeAction;
    .locals 1

    .line 53
    sget-object v0, Lio/github/hidroh/materialistic/Preferences$SwipeAction;->$VALUES:[Lio/github/hidroh/materialistic/Preferences$SwipeAction;

    invoke-virtual {v0}, [Lio/github/hidroh/materialistic/Preferences$SwipeAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/github/hidroh/materialistic/Preferences$SwipeAction;

    return-object v0
.end method
