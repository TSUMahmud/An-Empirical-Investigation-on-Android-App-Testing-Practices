.class Lio/github/hidroh/materialistic/data/SyncDelegate$Job;
.super Ljava/lang/Object;
.source "SyncDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/hidroh/materialistic/data/SyncDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Job"
.end annotation


# static fields
.field private static final EXTRA_ARTICLE_ENABLED:Ljava/lang/String; = "extra:articleEnabled"

.field private static final EXTRA_COMMENTS_ENABLED:Ljava/lang/String; = "extra:commentsEnabled"

.field private static final EXTRA_CONNECTION_ENABLED:Ljava/lang/String; = "extra:connectionEnabled"

.field private static final EXTRA_ID:Ljava/lang/String; = "extra:id"

.field private static final EXTRA_NOTIFICATION_ENABLED:Ljava/lang/String; = "extra:notificationEnabled"

.field private static final EXTRA_READABILITY_ENABLED:Ljava/lang/String; = "extra:readabilityEnabled"


# instance fields
.field articleEnabled:Z

.field commentsEnabled:Z

.field connectionEnabled:Z

.field final id:Ljava/lang/String;

.field notificationEnabled:Z

.field readabilityEnabled:Z


# direct methods
.method constructor <init>(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 443
    const-string v0, "extra:id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/SyncDelegate$Job;->id:Ljava/lang/String;

    .line 444
    const-string v0, "extra:connectionEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lio/github/hidroh/materialistic/data/SyncDelegate$Job;->connectionEnabled:Z

    .line 445
    const-string v0, "extra:readabilityEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lio/github/hidroh/materialistic/data/SyncDelegate$Job;->readabilityEnabled:Z

    .line 446
    const-string v0, "extra:articleEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lio/github/hidroh/materialistic/data/SyncDelegate$Job;->articleEnabled:Z

    .line 447
    const-string v0, "extra:commentsEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lio/github/hidroh/materialistic/data/SyncDelegate$Job;->commentsEnabled:Z

    .line 448
    const-string v0, "extra:notificationEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lio/github/hidroh/materialistic/data/SyncDelegate$Job;->notificationEnabled:Z

    .line 449
    return-void
.end method

.method constructor <init>(Landroid/os/PersistableBundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/PersistableBundle;

    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 434
    const-string v0, "extra:id"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/SyncDelegate$Job;->id:Ljava/lang/String;

    .line 435
    const-string v0, "extra:connectionEnabled"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lio/github/hidroh/materialistic/data/SyncDelegate$Job;->connectionEnabled:Z

    .line 436
    const-string v0, "extra:readabilityEnabled"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lio/github/hidroh/materialistic/data/SyncDelegate$Job;->readabilityEnabled:Z

    .line 437
    const-string v0, "extra:articleEnabled"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lio/github/hidroh/materialistic/data/SyncDelegate$Job;->articleEnabled:Z

    .line 438
    const-string v0, "extra:commentsEnabled"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    iput-boolean v0, p0, Lio/github/hidroh/materialistic/data/SyncDelegate$Job;->commentsEnabled:Z

    .line 439
    const-string v0, "extra:notificationEnabled"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_4

    const/4 v1, 0x1

    :cond_4
    iput-boolean v1, p0, Lio/github/hidroh/materialistic/data/SyncDelegate$Job;->notificationEnabled:Z

    .line 440
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 429
    iput-object p1, p0, Lio/github/hidroh/materialistic/data/SyncDelegate$Job;->id:Ljava/lang/String;

    .line 430
    return-void
.end method


# virtual methods
.method toBundle()Landroid/os/Bundle;
    .locals 3

    .line 464
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 465
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "extra:id"

    iget-object v2, p0, Lio/github/hidroh/materialistic/data/SyncDelegate$Job;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    const-string v1, "extra:connectionEnabled"

    iget-boolean v2, p0, Lio/github/hidroh/materialistic/data/SyncDelegate$Job;->connectionEnabled:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 467
    const-string v1, "extra:readabilityEnabled"

    iget-boolean v2, p0, Lio/github/hidroh/materialistic/data/SyncDelegate$Job;->readabilityEnabled:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 468
    const-string v1, "extra:articleEnabled"

    iget-boolean v2, p0, Lio/github/hidroh/materialistic/data/SyncDelegate$Job;->articleEnabled:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 469
    const-string v1, "extra:commentsEnabled"

    iget-boolean v2, p0, Lio/github/hidroh/materialistic/data/SyncDelegate$Job;->commentsEnabled:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 470
    const-string v1, "extra:notificationEnabled"

    iget-boolean v2, p0, Lio/github/hidroh/materialistic/data/SyncDelegate$Job;->notificationEnabled:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 471
    return-object v0
.end method

.method toPersistableBundle()Landroid/os/PersistableBundle;
    .locals 3

    .line 453
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 454
    .local v0, "bundle":Landroid/os/PersistableBundle;
    const-string v1, "extra:id"

    iget-object v2, p0, Lio/github/hidroh/materialistic/data/SyncDelegate$Job;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    const-string v1, "extra:connectionEnabled"

    iget-boolean v2, p0, Lio/github/hidroh/materialistic/data/SyncDelegate$Job;->connectionEnabled:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 456
    const-string v1, "extra:readabilityEnabled"

    iget-boolean v2, p0, Lio/github/hidroh/materialistic/data/SyncDelegate$Job;->readabilityEnabled:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 457
    const-string v1, "extra:articleEnabled"

    iget-boolean v2, p0, Lio/github/hidroh/materialistic/data/SyncDelegate$Job;->articleEnabled:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 458
    const-string v1, "extra:commentsEnabled"

    iget-boolean v2, p0, Lio/github/hidroh/materialistic/data/SyncDelegate$Job;->commentsEnabled:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 459
    const-string v1, "extra:notificationEnabled"

    iget-boolean v2, p0, Lio/github/hidroh/materialistic/data/SyncDelegate$Job;->notificationEnabled:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 460
    return-object v0
.end method
