.class public Lio/github/hidroh/materialistic/appwidget/WidgetRefreshJobService;
.super Landroid/app/job/JobService;
.source "WidgetRefreshJobService.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 2
    .param p1, "jobParameters"    # Landroid/app/job/JobParameters;

    .line 28
    new-instance v0, Lio/github/hidroh/materialistic/appwidget/WidgetHelper;

    invoke-direct {v0, p0}, Lio/github/hidroh/materialistic/appwidget/WidgetHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/github/hidroh/materialistic/appwidget/WidgetHelper;->refresh(I)V

    .line 29
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 30
    const/4 v0, 0x1

    return v0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 1
    .param p1, "jobParameters"    # Landroid/app/job/JobParameters;

    .line 35
    const/4 v0, 0x1

    return v0
.end method
