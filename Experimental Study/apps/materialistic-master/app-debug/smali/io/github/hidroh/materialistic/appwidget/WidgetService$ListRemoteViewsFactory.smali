.class Lio/github/hidroh/materialistic/appwidget/WidgetService$ListRemoteViewsFactory;
.super Ljava/lang/Object;
.source "WidgetService.java"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/hidroh/materialistic/appwidget/WidgetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ListRemoteViewsFactory"
.end annotation


# static fields
.field private static final COMMENT:Ljava/lang/String; = "%1$dc"

.field private static final MAX_ITEMS:I = 0xa

.field private static final SCORE:Ljava/lang/String; = "%1$dp"

.field private static final SUBTITLE_SEPARATOR:Ljava/lang/String; = " - "


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFilter:Ljava/lang/String;

.field private final mHotThreshold:I

.field private final mItemManager:Lio/github/hidroh/materialistic/data/ItemManager;

.field private mItems:[Lio/github/hidroh/materialistic/data/Item;

.field private final mLightTheme:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lio/github/hidroh/materialistic/data/ItemManager;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "itemManager"    # Lio/github/hidroh/materialistic/data/ItemManager;
    .param p3, "section"    # Ljava/lang/String;
    .param p4, "lightTheme"    # Z

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lio/github/hidroh/materialistic/appwidget/WidgetService$ListRemoteViewsFactory;->mContext:Landroid/content/Context;

    .line 85
    iput-object p2, p0, Lio/github/hidroh/materialistic/appwidget/WidgetService$ListRemoteViewsFactory;->mItemManager:Lio/github/hidroh/materialistic/data/ItemManager;

    .line 86
    iput-boolean p4, p0, Lio/github/hidroh/materialistic/appwidget/WidgetService$ListRemoteViewsFactory;->mLightTheme:Z

    .line 87
    nop

    .line 88
    const v0, 0x7f100132

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    const-string v0, "best"

    iput-object v0, p0, Lio/github/hidroh/materialistic/appwidget/WidgetService$ListRemoteViewsFactory;->mFilter:Ljava/lang/String;

    .line 90
    const/16 v0, 0x12c

    iput v0, p0, Lio/github/hidroh/materialistic/appwidget/WidgetService$ListRemoteViewsFactory;->mHotThreshold:I

    goto :goto_0

    .line 91
    :cond_0
    const v0, 0x7f100133

    .line 92
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x64

    if-eqz v0, :cond_1

    .line 93
    const-string v0, "top"

    iput-object v0, p0, Lio/github/hidroh/materialistic/appwidget/WidgetService$ListRemoteViewsFactory;->mFilter:Ljava/lang/String;

    .line 94
    iput v1, p0, Lio/github/hidroh/materialistic/appwidget/WidgetService$ListRemoteViewsFactory;->mHotThreshold:I

    goto :goto_0

    .line 96
    :cond_1
    iput-object p3, p0, Lio/github/hidroh/materialistic/appwidget/WidgetService$ListRemoteViewsFactory;->mFilter:Ljava/lang/String;

    .line 97
    iput v1, p0, Lio/github/hidroh/materialistic/appwidget/WidgetService$ListRemoteViewsFactory;->mHotThreshold:I

    .line 99
    :goto_0
    return-void
.end method

.method private getItem(I)Lio/github/hidroh/materialistic/data/Item;
    .locals 2
    .param p1, "position"    # I

    .line 169
    iget-object v0, p0, Lio/github/hidroh/materialistic/appwidget/WidgetService$ListRemoteViewsFactory;->mItems:[Lio/github/hidroh/materialistic/data/Item;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-object v0, v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getSpan(ILjava/lang/String;I)Landroid/text/SpannableString;
    .locals 6
    .param p1, "value"    # I
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "hotThreshold"    # I

    .line 177
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, p2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "text":Ljava/lang/String;
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 179
    .local v1, "spannable":Landroid/text/SpannableString;
    if-lt p1, p3, :cond_0

    .line 180
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    iget-object v4, p0, Lio/github/hidroh/materialistic/appwidget/WidgetService$ListRemoteViewsFactory;->mContext:Landroid/content/Context;

    const v5, 0x7f060082

    .line 181
    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v2, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 182
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x21

    .line 180
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 184
    :cond_0
    return-object v1
.end method

.method private isItemAvailable(Lio/github/hidroh/materialistic/data/Item;)Z
    .locals 1
    .param p1, "item"    # Lio/github/hidroh/materialistic/data/Item;

    .line 173
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lio/github/hidroh/materialistic/data/Item;->getLocalRevision()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .line 118
    iget-object v0, p0, Lio/github/hidroh/materialistic/appwidget/WidgetService$ListRemoteViewsFactory;->mItems:[Lio/github/hidroh/materialistic/data/Item;

    if-eqz v0, :cond_0

    array-length v0, v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItemId(I)J
    .locals 3
    .param p1, "position"    # I

    .line 159
    invoke-direct {p0, p1}, Lio/github/hidroh/materialistic/appwidget/WidgetService$ListRemoteViewsFactory;->getItem(I)Lio/github/hidroh/materialistic/data/Item;

    move-result-object v0

    .line 160
    .local v0, "item":Lio/github/hidroh/materialistic/data/Item;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/github/hidroh/materialistic/data/WebItem;->getLongId()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    return-wide v1
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .locals 3

    .line 149
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lio/github/hidroh/materialistic/appwidget/WidgetService$ListRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0c005c

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .locals 7
    .param p1, "position"    # I

    .line 123
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lio/github/hidroh/materialistic/appwidget/WidgetService$ListRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lio/github/hidroh/materialistic/appwidget/WidgetService$ListRemoteViewsFactory;->mLightTheme:Z

    if-eqz v2, :cond_0

    const v2, 0x7f0c005d

    goto :goto_0

    :cond_0
    const v2, 0x7f0c005c

    :goto_0
    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 125
    .local v0, "remoteViews":Landroid/widget/RemoteViews;
    invoke-direct {p0, p1}, Lio/github/hidroh/materialistic/appwidget/WidgetService$ListRemoteViewsFactory;->getItem(I)Lio/github/hidroh/materialistic/data/Item;

    move-result-object v1

    .line 126
    .local v1, "item":Lio/github/hidroh/materialistic/data/Item;
    if-nez v1, :cond_1

    .line 127
    return-object v0

    .line 129
    :cond_1
    invoke-direct {p0, v1}, Lio/github/hidroh/materialistic/appwidget/WidgetService$ListRemoteViewsFactory;->isItemAvailable(Lio/github/hidroh/materialistic/data/Item;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 130
    iget-object v2, p0, Lio/github/hidroh/materialistic/appwidget/WidgetService$ListRemoteViewsFactory;->mItemManager:Lio/github/hidroh/materialistic/data/ItemManager;

    invoke-interface {v1}, Lio/github/hidroh/materialistic/data/WebItem;->getId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v2, v3, v4}, Lio/github/hidroh/materialistic/data/ItemManager;->getItem(Ljava/lang/String;I)Lio/github/hidroh/materialistic/data/Item;

    move-result-object v2

    .line 131
    .local v2, "remoteItem":Lio/github/hidroh/materialistic/data/Item;
    if-eqz v2, :cond_2

    .line 132
    invoke-interface {v1, v2}, Lio/github/hidroh/materialistic/data/Item;->populate(Lio/github/hidroh/materialistic/data/Item;)V

    goto :goto_1

    .line 134
    :cond_2
    return-object v0

    .line 137
    .end local v2    # "remoteItem":Lio/github/hidroh/materialistic/data/Item;
    :cond_3
    :goto_1
    const v2, 0x7f09013b

    invoke-interface {v1}, Lio/github/hidroh/materialistic/data/WebItem;->getDisplayedTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 138
    const v2, 0x7f0900ea

    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 139
    invoke-interface {v1}, Lio/github/hidroh/materialistic/data/Item;->getScore()I

    move-result v4

    const-string v5, "%1$dp"

    iget v6, p0, Lio/github/hidroh/materialistic/appwidget/WidgetService$ListRemoteViewsFactory;->mHotThreshold:I

    mul-int/lit8 v6, v6, 0x3

    invoke-direct {p0, v4, v5, v6}, Lio/github/hidroh/materialistic/appwidget/WidgetService$ListRemoteViewsFactory;->getSpan(ILjava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    const-string v4, " - "

    .line 140
    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    .line 141
    invoke-interface {v1}, Lio/github/hidroh/materialistic/data/Item;->getKidCount()I

    move-result v4

    const-string v5, "%1$dc"

    iget v6, p0, Lio/github/hidroh/materialistic/appwidget/WidgetService$ListRemoteViewsFactory;->mHotThreshold:I

    invoke-direct {p0, v4, v5, v6}, Lio/github/hidroh/materialistic/appwidget/WidgetService$ListRemoteViewsFactory;->getSpan(ILjava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    .line 138
    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 142
    const v2, 0x7f090094

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 143
    invoke-interface {v1}, Lio/github/hidroh/materialistic/data/WebItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/github/hidroh/materialistic/AppUtils;->createItemUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 142
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    .line 144
    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 154
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .line 165
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate()V
    .locals 0

    .line 104
    return-void
.end method

.method public onDataSetChanged()V
    .locals 3

    .line 108
    iget-object v0, p0, Lio/github/hidroh/materialistic/appwidget/WidgetService$ListRemoteViewsFactory;->mItemManager:Lio/github/hidroh/materialistic/data/ItemManager;

    iget-object v1, p0, Lio/github/hidroh/materialistic/appwidget/WidgetService$ListRemoteViewsFactory;->mFilter:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Lio/github/hidroh/materialistic/data/ItemManager;->getStories(Ljava/lang/String;I)[Lio/github/hidroh/materialistic/data/Item;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/appwidget/WidgetService$ListRemoteViewsFactory;->mItems:[Lio/github/hidroh/materialistic/data/Item;

    .line 109
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 114
    return-void
.end method
