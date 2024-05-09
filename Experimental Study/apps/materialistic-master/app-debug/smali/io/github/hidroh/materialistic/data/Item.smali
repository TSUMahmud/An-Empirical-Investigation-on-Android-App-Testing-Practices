.class public interface abstract Lio/github/hidroh/materialistic/data/Item;
.super Ljava/lang/Object;
.source "Item.java"

# interfaces
.implements Lio/github/hidroh/materialistic/data/WebItem;


# virtual methods
.method public abstract clearPendingVoted()V
.end method

.method public abstract getBy()Ljava/lang/String;
.end method

.method public abstract getDescendants()I
.end method

.method public abstract getDisplayedText()Ljava/lang/CharSequence;
.end method

.method public abstract getKidCount()I
.end method

.method public abstract getKidItems()[Lio/github/hidroh/materialistic/data/Item;
.end method

.method public abstract getKids()[J
.end method

.method public abstract getLastKidCount()I
.end method

.method public abstract getLevel()I
.end method

.method public abstract getLocalRevision()I
.end method

.method public abstract getNeighbour(I)J
.end method

.method public abstract getParent()Ljava/lang/String;
.end method

.method public abstract getParentItem()Lio/github/hidroh/materialistic/data/Item;
.end method

.method public abstract getRank()I
.end method

.method public abstract getRawType()Ljava/lang/String;
.end method

.method public abstract getRawUrl()Ljava/lang/String;
.end method

.method public abstract getScore()I
.end method

.method public abstract getText()Ljava/lang/String;
.end method

.method public abstract getTime()J
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract hasNewKids()Z
.end method

.method public abstract incrementScore()V
.end method

.method public abstract isCollapsed()Z
.end method

.method public abstract isContentExpanded()Z
.end method

.method public abstract isDead()Z
.end method

.method public abstract isDeleted()Z
.end method

.method public abstract isPendingVoted()Z
.end method

.method public abstract isViewed()Z
.end method

.method public abstract isVoted()Z
.end method

.method public abstract populate(Lio/github/hidroh/materialistic/data/Item;)V
.end method

.method public abstract setCollapsed(Z)V
.end method

.method public abstract setContentExpanded(Z)V
.end method

.method public abstract setIsViewed(Z)V
.end method

.method public abstract setLastKidCount(I)V
.end method

.method public abstract setLocalRevision(I)V
.end method
