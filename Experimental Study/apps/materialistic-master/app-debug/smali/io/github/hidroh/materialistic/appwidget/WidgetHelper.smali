.class Lio/github/hidroh/materialistic/appwidget/WidgetHelper;
.super Ljava/lang/Object;
.source "WidgetHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/hidroh/materialistic/appwidget/WidgetHelper$WidgetConfig;
    }
.end annotation


# static fields
.field private static final DEFAULT_FREQUENCY_HOUR:I = 0x6

.field private static final SP_NAME:Ljava/lang/String; = "WidgetConfiguration_%1$d"


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lio/github/hidroh/materialistic/appwidget/WidgetHelper;->mContext:Landroid/content/Context;

    .line 60
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/appwidget/WidgetHelper;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 61
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lio/github/hidroh/materialistic/appwidget/WidgetHelper;->mAlarmManager:Landroid/app/AlarmManager;

    .line 62
    return-void
.end method

.method private cancelScheduledUpdate(I)V
    .locals 2
    .param p1, "appWidgetId"    # I

    .line 115
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 116
    invoke-direct {p0}, Lio/github/hidroh/materialistic/appwidget/WidgetHelper;->getJobScheduler()Landroid/app/job/JobScheduler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/job/JobScheduler;->cancel(I)V

    goto :goto_0

    .line 118
    :cond_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/appwidget/WidgetHelper;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-direct {p0, p1}, Lio/github/hidroh/materialistic/appwidget/WidgetHelper;->createRefreshPendingIntent(I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 120
    :goto_0
    return-void
.end method

.method private clearConfig(I)V
    .locals 3
    .param p1, "appWidgetId"    # I

    .line 133
    iget-object v0, p0, Lio/github/hidroh/materialistic/appwidget/WidgetHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lio/github/hidroh/materialistic/appwidget/WidgetHelper;->getConfigName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 134
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 135
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 136
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 137
    return-void
.end method

.method private createRefreshPendingIntent(I)Landroid/app/PendingIntent;
    .locals 3
    .param p1, "appWidgetId"    # I

    .line 173
    iget-object v0, p0, Lio/github/hidroh/materialistic/appwidget/WidgetHelper;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "io.github.hidroh.materialistic.ACTION_REFRESH_WIDGET"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "appWidgetId"

    .line 175
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lio/github/hidroh/materialistic/appwidget/WidgetHelper;->mContext:Landroid/content/Context;

    .line 176
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 173
    const/high16 v2, 0x8000000

    invoke-static {v0, p1, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private getConfig(II)Ljava/lang/String;
    .locals 3
    .param p1, "appWidgetId"    # I
    .param p2, "key"    # I

    .line 128
    iget-object v0, p0, Lio/github/hidroh/materialistic/appwidget/WidgetHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lio/github/hidroh/materialistic/appwidget/WidgetHelper;->getConfigName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lio/github/hidroh/materialistic/appwidget/WidgetHelper;->mContext:Landroid/content/Context;

    .line 129
    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    return-object v0
.end method

.method static getConfigName(I)Ljava/lang/String;
    .locals 5
    .param p0, "appWidgetId"    # I

    .line 65
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "WidgetConfiguration_%1$d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getJobScheduler()Landroid/app/job/JobScheduler;
    .locals 2

    .line 124
    iget-object v0, p0, Lio/github/hidroh/materialistic/appwidget/WidgetHelper;->mContext:Landroid/content/Context;

    const-string v1, "jobscheduler"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    return-object v0
.end method

.method private scheduleUpdate(I)V
    .locals 12
    .param p1, "appWidgetId"    # I

    .line 96
    const v0, 0x7f10012c

    invoke-direct {p0, p1, v0}, Lio/github/hidroh/materialistic/appwidget/WidgetHelper;->getConfig(II)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "frequency":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    .line 98
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    int-to-long v1, v1

    const-wide/32 v3, 0x36ee80

    mul-long v1, v1, v3

    .line 99
    .local v1, "frequencyHourMillis":J
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_1

    .line 100
    invoke-direct {p0}, Lio/github/hidroh/materialistic/appwidget/WidgetHelper;->getJobScheduler()Landroid/app/job/JobScheduler;

    move-result-object v3

    new-instance v4, Landroid/app/job/JobInfo$Builder;

    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, p0, Lio/github/hidroh/materialistic/appwidget/WidgetHelper;->mContext:Landroid/content/Context;

    .line 101
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lio/github/hidroh/materialistic/appwidget/WidgetRefreshJobService;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, p1, v5}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const/4 v5, 0x1

    .line 102
    invoke-virtual {v4, v5}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v4

    .line 103
    invoke-virtual {v4, v1, v2}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v4

    .line 104
    invoke-virtual {v4}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v4

    .line 100
    invoke-virtual {v3, v4}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    goto :goto_1

    .line 106
    :cond_1
    iget-object v5, p0, Lio/github/hidroh/materialistic/appwidget/WidgetHelper;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v6, 0x1

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long v7, v3, v1

    .line 109
    invoke-direct {p0, p1}, Lio/github/hidroh/materialistic/appwidget/WidgetHelper;->createRefreshPendingIntent(I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 106
    move-wide v9, v1

    invoke-virtual/range {v5 .. v11}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 112
    :goto_1
    return-void
.end method

.method private updateCollection(ILandroid/widget/RemoteViews;Lio/github/hidroh/materialistic/appwidget/WidgetHelper$WidgetConfig;)V
    .locals 5
    .param p1, "appWidgetId"    # I
    .param p2, "remoteViews"    # Landroid/widget/RemoteViews;
    .param p3, "config"    # Lio/github/hidroh/materialistic/appwidget/WidgetHelper$WidgetConfig;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 150
    iget-object v0, p0, Lio/github/hidroh/materialistic/appwidget/WidgetHelper;->mContext:Landroid/content/Context;

    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const v3, 0x80001

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 150
    const v1, 0x7f090117

    invoke-virtual {p2, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 153
    nop

    .line 154
    invoke-direct {p0, p1}, Lio/github/hidroh/materialistic/appwidget/WidgetHelper;->createRefreshPendingIntent(I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 153
    const v1, 0x7f090038

    invoke-virtual {p2, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 155
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lio/github/hidroh/materialistic/appwidget/WidgetHelper;->mContext:Landroid/content/Context;

    const-class v2, Lio/github/hidroh/materialistic/appwidget/WidgetService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "appWidgetId"

    .line 156
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra:customQuery"

    iget-boolean v2, p3, Lio/github/hidroh/materialistic/appwidget/WidgetHelper$WidgetConfig;->customQuery:Z

    .line 157
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra:section"

    iget-object v2, p3, Lio/github/hidroh/materialistic/appwidget/WidgetHelper$WidgetConfig;->section:Ljava/lang/String;

    .line 158
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra:lightTheme"

    iget-boolean v2, p3, Lio/github/hidroh/materialistic/appwidget/WidgetHelper$WidgetConfig;->isLightTheme:Z

    .line 159
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 160
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 161
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const v2, 0x102000a

    const/16 v3, 0xe

    if-lt v1, v3, :cond_0

    .line 162
    invoke-virtual {p2, v2, v0}, Landroid/widget/RemoteViews;->setRemoteAdapter(ILandroid/content/Intent;)V

    goto :goto_0

    .line 165
    :cond_0
    invoke-virtual {p2, p1, v2, v0}, Landroid/widget/RemoteViews;->setRemoteAdapter(IILandroid/content/Intent;)V

    .line 167
    :goto_0
    const v1, 0x7f090072

    invoke-virtual {p2, v2, v1}, Landroid/widget/RemoteViews;->setEmptyView(II)V

    .line 168
    iget-object v1, p0, Lio/github/hidroh/materialistic/appwidget/WidgetHelper;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 169
    const/4 v4, 0x0

    invoke-static {v1, v4, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 168
    invoke-virtual {p2, v2, v1}, Landroid/widget/RemoteViews;->setPendingIntentTemplate(ILandroid/app/PendingIntent;)V

    .line 170
    return-void
.end method

.method private updateTitle(Landroid/widget/RemoteViews;Lio/github/hidroh/materialistic/appwidget/WidgetHelper$WidgetConfig;)V
    .locals 5
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;
    .param p2, "config"    # Lio/github/hidroh/materialistic/appwidget/WidgetHelper$WidgetConfig;

    .line 140
    iget-object v0, p2, Lio/github/hidroh/materialistic/appwidget/WidgetHelper$WidgetConfig;->title:Ljava/lang/String;

    const v1, 0x7f09013b

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 141
    iget-object v0, p0, Lio/github/hidroh/materialistic/appwidget/WidgetHelper;->mContext:Landroid/content/Context;

    iget-boolean v2, p2, Lio/github/hidroh/materialistic/appwidget/WidgetHelper$WidgetConfig;->customQuery:Z

    if-eqz v2, :cond_0

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p2, Lio/github/hidroh/materialistic/appwidget/WidgetHelper$WidgetConfig;->destination:Ljava/lang/Class;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "query"

    iget-object v4, p2, Lio/github/hidroh/materialistic/appwidget/WidgetHelper$WidgetConfig;->title:Ljava/lang/String;

    .line 144
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p2, Lio/github/hidroh/materialistic/appwidget/WidgetHelper$WidgetConfig;->destination:Ljava/lang/Class;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 142
    :goto_0
    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 141
    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 146
    return-void
.end method


# virtual methods
.method configure(I)V
    .locals 0
    .param p1, "appWidgetId"    # I

    .line 69
    invoke-direct {p0, p1}, Lio/github/hidroh/materialistic/appwidget/WidgetHelper;->scheduleUpdate(I)V

    .line 70
    invoke-virtual {p0, p1}, Lio/github/hidroh/materialistic/appwidget/WidgetHelper;->update(I)V

    .line 71
    return-void
.end method

.method refresh(I)V
    .locals 2
    .param p1, "appWidgetId"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 86
    iget-object v0, p0, Lio/github/hidroh/materialistic/appwidget/WidgetHelper;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    const v1, 0x102000a

    invoke-virtual {v0, p1, v1}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V

    .line 87
    invoke-virtual {p0, p1}, Lio/github/hidroh/materialistic/appwidget/WidgetHelper;->update(I)V

    .line 88
    return-void
.end method

.method remove(I)V
    .locals 0
    .param p1, "appWidgetId"    # I

    .line 91
    invoke-direct {p0, p1}, Lio/github/hidroh/materialistic/appwidget/WidgetHelper;->cancelScheduledUpdate(I)V

    .line 92
    invoke-direct {p0, p1}, Lio/github/hidroh/materialistic/appwidget/WidgetHelper;->clearConfig(I)V

    .line 93
    return-void
.end method

.method update(I)V
    .locals 4
    .param p1, "appWidgetId"    # I

    .line 74
    iget-object v0, p0, Lio/github/hidroh/materialistic/appwidget/WidgetHelper;->mContext:Landroid/content/Context;

    .line 75
    const v1, 0x7f100134

    invoke-direct {p0, p1, v1}, Lio/github/hidroh/materialistic/appwidget/WidgetHelper;->getConfig(II)Ljava/lang/String;

    move-result-object v1

    .line 76
    const v2, 0x7f100130

    invoke-direct {p0, p1, v2}, Lio/github/hidroh/materialistic/appwidget/WidgetHelper;->getConfig(II)Ljava/lang/String;

    move-result-object v2

    .line 77
    const v3, 0x7f10012e

    invoke-direct {p0, p1, v3}, Lio/github/hidroh/materialistic/appwidget/WidgetHelper;->getConfig(II)Ljava/lang/String;

    move-result-object v3

    .line 74
    invoke-static {v0, v1, v2, v3}, Lio/github/hidroh/materialistic/appwidget/WidgetHelper$WidgetConfig;->createWidgetConfig(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/github/hidroh/materialistic/appwidget/WidgetHelper$WidgetConfig;

    move-result-object v0

    .line 78
    .local v0, "config":Lio/github/hidroh/materialistic/appwidget/WidgetHelper$WidgetConfig;
    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v2, p0, Lio/github/hidroh/materialistic/appwidget/WidgetHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Lio/github/hidroh/materialistic/appwidget/WidgetHelper$WidgetConfig;->widgetLayout:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 79
    .local v1, "remoteViews":Landroid/widget/RemoteViews;
    invoke-direct {p0, v1, v0}, Lio/github/hidroh/materialistic/appwidget/WidgetHelper;->updateTitle(Landroid/widget/RemoteViews;Lio/github/hidroh/materialistic/appwidget/WidgetHelper$WidgetConfig;)V

    .line 80
    invoke-direct {p0, p1, v1, v0}, Lio/github/hidroh/materialistic/appwidget/WidgetHelper;->updateCollection(ILandroid/widget/RemoteViews;Lio/github/hidroh/materialistic/appwidget/WidgetHelper$WidgetConfig;)V

    .line 81
    iget-object v2, p0, Lio/github/hidroh/materialistic/appwidget/WidgetHelper;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v2, p1, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 82
    return-void
.end method
