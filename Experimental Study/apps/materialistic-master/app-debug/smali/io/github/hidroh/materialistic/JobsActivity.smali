.class public Lio/github/hidroh/materialistic/JobsActivity;
.super Lio/github/hidroh/materialistic/BaseStoriesActivity;
.source "JobsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lio/github/hidroh/materialistic/BaseStoriesActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getDefaultTitle()Ljava/lang/String;
    .locals 1

    .line 27
    const v0, 0x7f10017a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getFetchMode()Ljava/lang/String;
    .locals 1

    .line 33
    const-string v0, "jobs"

    return-object v0
.end method
