.class public Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStory;
.super Ljava/lang/Object;
.source "MaterialisticDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/hidroh/materialistic/data/MaterialisticDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedStory"
.end annotation


# instance fields
.field private id:I

.field private itemId:Ljava/lang/String;

.field private time:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static from(Lio/github/hidroh/materialistic/data/WebItem;)Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStory;
    .locals 3
    .param p0, "story"    # Lio/github/hidroh/materialistic/data/WebItem;

    .line 218
    new-instance v0, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStory;

    invoke-direct {v0}, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStory;-><init>()V

    .line 219
    .local v0, "savedStory":Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStory;
    invoke-interface {p0}, Lio/github/hidroh/materialistic/data/WebItem;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStory;->itemId:Ljava/lang/String;

    .line 220
    invoke-interface {p0}, Lio/github/hidroh/materialistic/data/WebItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStory;->url:Ljava/lang/String;

    .line 221
    invoke-interface {p0}, Lio/github/hidroh/materialistic/data/WebItem;->getDisplayedTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStory;->title:Ljava/lang/String;

    .line 222
    instance-of v1, p0, Lio/github/hidroh/materialistic/data/Favorite;

    if-eqz v1, :cond_0

    move-object v1, p0

    check-cast v1, Lio/github/hidroh/materialistic/data/Favorite;

    .line 223
    invoke-virtual {v1}, Lio/github/hidroh/materialistic/data/Favorite;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    .line 224
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 222
    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStory;->time:Ljava/lang/String;

    .line 225
    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 229
    iget v0, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStory;->id:I

    return v0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 1

    .line 237
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStory;->itemId:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .line 261
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStory;->time:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 253
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStory;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 245
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStory;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .line 233
    iput p1, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStory;->id:I

    .line 234
    return-void
.end method

.method public setItemId(Ljava/lang/String;)V
    .locals 0
    .param p1, "itemId"    # Ljava/lang/String;

    .line 241
    iput-object p1, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStory;->itemId:Ljava/lang/String;

    .line 242
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "time"    # Ljava/lang/String;

    .line 265
    iput-object p1, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStory;->time:Ljava/lang/String;

    .line 266
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .line 257
    iput-object p1, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStory;->title:Ljava/lang/String;

    .line 258
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .line 249
    iput-object p1, p0, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStory;->url:Ljava/lang/String;

    .line 250
    return-void
.end method
