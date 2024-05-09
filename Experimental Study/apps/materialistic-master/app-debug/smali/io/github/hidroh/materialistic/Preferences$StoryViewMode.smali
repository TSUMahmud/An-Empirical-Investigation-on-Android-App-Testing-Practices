.class public final enum Lio/github/hidroh/materialistic/Preferences$StoryViewMode;
.super Ljava/lang/Enum;
.source "Preferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/hidroh/materialistic/Preferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StoryViewMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/github/hidroh/materialistic/Preferences$StoryViewMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/github/hidroh/materialistic/Preferences$StoryViewMode;

.field public static final enum Article:Lio/github/hidroh/materialistic/Preferences$StoryViewMode;

.field public static final enum Comment:Lio/github/hidroh/materialistic/Preferences$StoryViewMode;

.field public static final enum Readability:Lio/github/hidroh/materialistic/Preferences$StoryViewMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 61
    new-instance v0, Lio/github/hidroh/materialistic/Preferences$StoryViewMode;

    const-string v1, "Comment"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/github/hidroh/materialistic/Preferences$StoryViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/hidroh/materialistic/Preferences$StoryViewMode;->Comment:Lio/github/hidroh/materialistic/Preferences$StoryViewMode;

    .line 62
    new-instance v0, Lio/github/hidroh/materialistic/Preferences$StoryViewMode;

    const-string v1, "Article"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lio/github/hidroh/materialistic/Preferences$StoryViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/hidroh/materialistic/Preferences$StoryViewMode;->Article:Lio/github/hidroh/materialistic/Preferences$StoryViewMode;

    .line 63
    new-instance v0, Lio/github/hidroh/materialistic/Preferences$StoryViewMode;

    const-string v1, "Readability"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lio/github/hidroh/materialistic/Preferences$StoryViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/hidroh/materialistic/Preferences$StoryViewMode;->Readability:Lio/github/hidroh/materialistic/Preferences$StoryViewMode;

    .line 60
    const/4 v0, 0x3

    new-array v0, v0, [Lio/github/hidroh/materialistic/Preferences$StoryViewMode;

    sget-object v1, Lio/github/hidroh/materialistic/Preferences$StoryViewMode;->Comment:Lio/github/hidroh/materialistic/Preferences$StoryViewMode;

    aput-object v1, v0, v2

    sget-object v1, Lio/github/hidroh/materialistic/Preferences$StoryViewMode;->Article:Lio/github/hidroh/materialistic/Preferences$StoryViewMode;

    aput-object v1, v0, v3

    sget-object v1, Lio/github/hidroh/materialistic/Preferences$StoryViewMode;->Readability:Lio/github/hidroh/materialistic/Preferences$StoryViewMode;

    aput-object v1, v0, v4

    sput-object v0, Lio/github/hidroh/materialistic/Preferences$StoryViewMode;->$VALUES:[Lio/github/hidroh/materialistic/Preferences$StoryViewMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/github/hidroh/materialistic/Preferences$StoryViewMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 60
    const-class v0, Lio/github/hidroh/materialistic/Preferences$StoryViewMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/Preferences$StoryViewMode;

    return-object v0
.end method

.method public static values()[Lio/github/hidroh/materialistic/Preferences$StoryViewMode;
    .locals 1

    .line 60
    sget-object v0, Lio/github/hidroh/materialistic/Preferences$StoryViewMode;->$VALUES:[Lio/github/hidroh/materialistic/Preferences$StoryViewMode;

    invoke-virtual {v0}, [Lio/github/hidroh/materialistic/Preferences$StoryViewMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/github/hidroh/materialistic/Preferences$StoryViewMode;

    return-object v0
.end method
