.class public final Lio/github/hidroh/materialistic/ktx/ExtensionsKt;
.super Ljava/lang/Object;
.source "Extensions.kt"


# direct methods
.method public static final closeQuietly(Ljava/io/Closeable;)V
    .locals 2
    .param p0, "$receiver"    # Ljava/io/Closeable;

    const/4 v0, 0x0

    .local v0, "$i$f$closeQuietly":I
    const-string v1, "receiver$0"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-static {p0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    return-void
.end method

.method public static final getUri(Ljava/io/File;Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "$receiver"    # Ljava/io/File;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "authority"    # Ljava/lang/String;

    const/4 v0, 0x0

    .local v0, "$i$f$getUri":I
    const-string v1, "receiver$0"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "authority"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-static {p1, p2, p0}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .end local v0    # "$i$f$getUri":I
    .end local p0    # "$receiver":Ljava/io/File;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "authority":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final setChannel(Landroidx/core/app/NotificationCompat$Builder;Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 3
    .param p0, "$receiver"    # Landroidx/core/app/NotificationCompat$Builder;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "channelId"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/CharSequence;

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channelId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 43
    nop

    .line 44
    nop

    .line 43
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/app/NotificationManager;

    .line 44
    new-instance v1, Landroid/app/NotificationChannel;

    const/4 v2, 0x2

    invoke-direct {v1, p2, p3, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 45
    invoke-virtual {p0, p2}, Landroidx/core/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_0

    .line 43
    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_1
    :goto_0
    return-object p0
.end method

.method public static final toSendIntentChooser(Landroid/net/Uri;Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .param p0, "$receiver"    # Landroid/net/Uri;
    .param p1, "context"    # Landroid/content/Context;

    const/4 v0, 0x0

    .local v0, "$i$f$toSendIntentChooser":I
    const-string v1, "receiver$0"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-static {p1, p0}, Lio/github/hidroh/materialistic/AppUtils;->makeSendIntentChooser(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .end local v0    # "$i$f$toSendIntentChooser":I
    .end local p0    # "$receiver":Landroid/net/Uri;
    .end local p1    # "context":Landroid/content/Context;
    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p0, 0x0

    throw p0
.end method
