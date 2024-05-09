.class public interface abstract Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStoriesDao;
.super Ljava/lang/Object;
.source "MaterialisticDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/hidroh/materialistic/data/MaterialisticDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SavedStoriesDao"
.end annotation


# virtual methods
.method public abstract deleteAll()I
.end method

.method public abstract deleteByItemId(Ljava/lang/String;)I
.end method

.method public abstract deleteByTitle(Ljava/lang/String;)I
.end method

.method public varargs abstract insert([Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStory;)V
.end method

.method public abstract searchToCursor(Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public abstract selectAll()Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStory;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract selectAllToCursor()Landroid/database/Cursor;
.end method

.method public abstract selectByItemId(Ljava/lang/String;)Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStory;
.end method
