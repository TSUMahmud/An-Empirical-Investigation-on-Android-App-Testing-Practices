.class public interface abstract Lio/github/hidroh/materialistic/data/WebItem;
.super Ljava/lang/Object;
.source "WebItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/hidroh/materialistic/data/WebItem$Type;
    }
.end annotation


# static fields
.field public static final COMMENT_TYPE:Ljava/lang/String; = "comment"

.field public static final JOB_TYPE:Ljava/lang/String; = "job"

.field public static final POLL_TYPE:Ljava/lang/String; = "poll"

.field public static final STORY_TYPE:Ljava/lang/String; = "story"


# virtual methods
.method public abstract getDisplayedAuthor(Landroid/content/Context;ZI)Landroid/text/Spannable;
.end method

.method public abstract getDisplayedTime(Landroid/content/Context;)Landroid/text/Spannable;
.end method

.method public abstract getDisplayedTitle()Ljava/lang/String;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getLongId()J
.end method

.method public abstract getSource()Ljava/lang/String;
.end method

.method public abstract getType()Ljava/lang/String;
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public abstract isFavorite()Z
.end method

.method public abstract isStoryType()Z
.end method

.method public abstract setFavorite(Z)V
.end method
