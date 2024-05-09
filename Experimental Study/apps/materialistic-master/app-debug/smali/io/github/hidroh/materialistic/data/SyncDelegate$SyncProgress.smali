.class Lio/github/hidroh/materialistic/data/SyncDelegate$SyncProgress;
.super Ljava/lang/Object;
.source "SyncDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/hidroh/materialistic/data/SyncDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SyncProgress"
.end annotation


# instance fields
.field private finishedKids:I

.field private final id:Ljava/lang/String;

.field private maxWebProgress:I

.field private readability:Ljava/lang/Boolean;

.field private self:Ljava/lang/Boolean;

.field title:Ljava/lang/String;

.field private totalKids:I

.field private webProgress:I


# direct methods
.method constructor <init>(Lio/github/hidroh/materialistic/data/SyncDelegate$Job;)V
    .locals 1
    .param p1, "job"    # Lio/github/hidroh/materialistic/data/SyncDelegate$Job;

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    iget-object v0, p1, Lio/github/hidroh/materialistic/data/SyncDelegate$Job;->id:Ljava/lang/String;

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/SyncDelegate$SyncProgress;->id:Ljava/lang/String;

    .line 339
    iget-boolean v0, p1, Lio/github/hidroh/materialistic/data/SyncDelegate$Job;->commentsEnabled:Z

    if-eqz v0, :cond_0

    .line 340
    const/4 v0, 0x1

    iput v0, p0, Lio/github/hidroh/materialistic/data/SyncDelegate$SyncProgress;->totalKids:I

    .line 342
    :cond_0
    iget-boolean v0, p1, Lio/github/hidroh/materialistic/data/SyncDelegate$Job;->articleEnabled:Z

    if-eqz v0, :cond_1

    .line 343
    const/16 v0, 0x64

    iput v0, p0, Lio/github/hidroh/materialistic/data/SyncDelegate$SyncProgress;->maxWebProgress:I

    .line 345
    :cond_1
    iget-boolean v0, p1, Lio/github/hidroh/materialistic/data/SyncDelegate$Job;->readabilityEnabled:Z

    if-eqz v0, :cond_2

    .line 346
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/SyncDelegate$SyncProgress;->readability:Ljava/lang/Boolean;

    .line 348
    :cond_2
    return-void
.end method

.method private finishKid()V
    .locals 1

    .line 395
    iget v0, p0, Lio/github/hidroh/materialistic/data/SyncDelegate$SyncProgress;->finishedKids:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/github/hidroh/materialistic/data/SyncDelegate$SyncProgress;->finishedKids:I

    .line 396
    return-void
.end method

.method private finishSelf(Lio/github/hidroh/materialistic/data/HackerNewsItem;ZZ)V
    .locals 2
    .param p1, "item"    # Lio/github/hidroh/materialistic/data/HackerNewsItem;
    .param p2, "kidsEnabled"    # Z
    .param p3, "readabilityEnabled"    # Z

    .line 381
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lio/github/hidroh/materialistic/data/SyncDelegate$SyncProgress;->self:Ljava/lang/Boolean;

    .line 382
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lio/github/hidroh/materialistic/data/HackerNewsItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-object v1, p0, Lio/github/hidroh/materialistic/data/SyncDelegate$SyncProgress;->title:Ljava/lang/String;

    .line 383
    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lio/github/hidroh/materialistic/data/HackerNewsItem;->getKids()[J

    move-result-object v1

    if-eqz v1, :cond_2

    .line 385
    invoke-virtual {p1}, Lio/github/hidroh/materialistic/data/HackerNewsItem;->getKids()[J

    move-result-object v1

    array-length v1, v1

    iput v1, p0, Lio/github/hidroh/materialistic/data/SyncDelegate$SyncProgress;->totalKids:I

    goto :goto_2

    .line 387
    :cond_2
    iput v0, p0, Lio/github/hidroh/materialistic/data/SyncDelegate$SyncProgress;->totalKids:I

    .line 389
    :goto_2
    if-eqz p3, :cond_3

    .line 390
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/SyncDelegate$SyncProgress;->readability:Ljava/lang/Boolean;

    .line 392
    :cond_3
    return-void
.end method


# virtual methods
.method finishItem(Ljava/lang/String;Lio/github/hidroh/materialistic/data/HackerNewsItem;ZZ)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "item"    # Lio/github/hidroh/materialistic/data/HackerNewsItem;
    .param p3, "kidsEnabled"    # Z
    .param p4, "readabilityEnabled"    # Z

    .line 361
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/SyncDelegate$SyncProgress;->id:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    invoke-direct {p0, p2, p3, p4}, Lio/github/hidroh/materialistic/data/SyncDelegate$SyncProgress;->finishSelf(Lio/github/hidroh/materialistic/data/HackerNewsItem;ZZ)V

    goto :goto_0

    .line 364
    :cond_0
    invoke-direct {p0}, Lio/github/hidroh/materialistic/data/SyncDelegate$SyncProgress;->finishKid()V

    .line 366
    :goto_0
    return-void
.end method

.method finishReadability()V
    .locals 1

    .line 370
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/SyncDelegate$SyncProgress;->readability:Ljava/lang/Boolean;

    .line 371
    return-void
.end method

.method getMax()I
    .locals 3

    .line 351
    iget v0, p0, Lio/github/hidroh/materialistic/data/SyncDelegate$SyncProgress;->totalKids:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lio/github/hidroh/materialistic/data/SyncDelegate$SyncProgress;->readability:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    iget v1, p0, Lio/github/hidroh/materialistic/data/SyncDelegate$SyncProgress;->maxWebProgress:I

    add-int/2addr v0, v1

    return v0
.end method

.method getProgress()I
    .locals 4

    .line 355
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/SyncDelegate$SyncProgress;->self:Ljava/lang/Boolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Lio/github/hidroh/materialistic/data/SyncDelegate$SyncProgress;->finishedKids:I

    add-int/2addr v0, v3

    iget-object v3, p0, Lio/github/hidroh/materialistic/data/SyncDelegate$SyncProgress;->readability:Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    iget v1, p0, Lio/github/hidroh/materialistic/data/SyncDelegate$SyncProgress;->webProgress:I

    add-int/2addr v0, v1

    return v0
.end method

.method updateArticle(II)V
    .locals 0
    .param p1, "webProgress"    # I
    .param p2, "maxWebProgress"    # I

    .line 375
    iput p1, p0, Lio/github/hidroh/materialistic/data/SyncDelegate$SyncProgress;->webProgress:I

    .line 376
    iput p2, p0, Lio/github/hidroh/materialistic/data/SyncDelegate$SyncProgress;->maxWebProgress:I

    .line 377
    return-void
.end method
