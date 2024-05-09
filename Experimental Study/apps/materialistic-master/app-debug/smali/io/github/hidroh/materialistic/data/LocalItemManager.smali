.class public interface abstract Lio/github/hidroh/materialistic/data/LocalItemManager;
.super Ljava/lang/Object;
.source "LocalItemManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/hidroh/materialistic/data/LocalItemManager$Observer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract attach(Lio/github/hidroh/materialistic/data/LocalItemManager$Observer;Ljava/lang/String;)V
.end method

.method public abstract detach()V
.end method

.method public abstract getItem(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method public abstract getSize()I
.end method
