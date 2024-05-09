.class public interface abstract Lio/github/hidroh/materialistic/data/UserManager$User;
.super Ljava/lang/Object;
.source "UserManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/hidroh/materialistic/data/UserManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "User"
.end annotation


# virtual methods
.method public abstract getAbout()Ljava/lang/String;
.end method

.method public abstract getCreated(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getItems()[Lio/github/hidroh/materialistic/data/Item;
.end method

.method public abstract getKarma()J
.end method
