.class public interface abstract Lio/github/hidroh/materialistic/accounts/UserServices;
.super Ljava/lang/Object;
.source "UserServices.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/hidroh/materialistic/accounts/UserServices$Exception;,
        Lio/github/hidroh/materialistic/accounts/UserServices$Callback;
    }
.end annotation


# virtual methods
.method public abstract login(Ljava/lang/String;Ljava/lang/String;ZLio/github/hidroh/materialistic/accounts/UserServices$Callback;)V
.end method

.method public abstract reply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lio/github/hidroh/materialistic/accounts/UserServices$Callback;)V
.end method

.method public abstract submit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLio/github/hidroh/materialistic/accounts/UserServices$Callback;)V
.end method

.method public abstract voteUp(Landroid/content/Context;Ljava/lang/String;Lio/github/hidroh/materialistic/accounts/UserServices$Callback;)Z
.end method
