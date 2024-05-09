.class public final Lio/github/hidroh/materialistic/data/FavoriteManager;
.super Ljava/lang/Object;
.source "FavoriteManager.kt"

# interfaces
.implements Lio/github/hidroh/materialistic/data/LocalItemManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/hidroh/materialistic/data/FavoriteManager$Cursor;,
        Lio/github/hidroh/materialistic/data/FavoriteManager$FavoriteRoomLoader;,
        Lio/github/hidroh/materialistic/data/FavoriteManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/github/hidroh/materialistic/data/LocalItemManager<",
        "Lio/github/hidroh/materialistic/data/Favorite;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFavoriteManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FavoriteManager.kt\nio/github/hidroh/materialistic/data/FavoriteManager\n+ 2 Extensions.kt\nio/github/hidroh/materialistic/ktx/ExtensionsKt\n*L\n1#1,317:1\n31#2:318\n34#2:319\n37#2:320\n*E\n*S KotlinDebug\n*F\n+ 1 FavoriteManager.kt\nio/github/hidroh/materialistic/data/FavoriteManager\n*L\n209#1:318\n225#1:319\n242#1:320\n*E\n"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final CHANNEL_EXPORT:Ljava/lang/String; = "export"

.field public static final Companion:Lio/github/hidroh/materialistic/data/FavoriteManager$Companion;

.field private static final FILENAME_EXPORT:Ljava/lang/String; = "materialistic-export.txt"

.field private static final FILE_AUTHORITY:Ljava/lang/String; = "io.github.hidroh.materialistic.fileprovider"

.field private static final PATH_SAVED:Ljava/lang/String; = "saved"

.field private static final URI_PATH_ADD:Ljava/lang/String; = "add"

.field private static final URI_PATH_CLEAR:Ljava/lang/String; = "clear"

.field private static final URI_PATH_REMOVE:Ljava/lang/String; = "remove"


# instance fields
.field private final cache:Lio/github/hidroh/materialistic/data/LocalCache;

.field private cursor:Lio/github/hidroh/materialistic/data/FavoriteManager$Cursor;

.field private final dao:Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStoriesDao;

.field private final ioScheduler:Lrx/Scheduler;

.field private loader:Lio/github/hidroh/materialistic/data/FavoriteManager$FavoriteRoomLoader;

.field private final notificationId:I

.field private final syncScheduler:Lio/github/hidroh/materialistic/data/SyncScheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/github/hidroh/materialistic/data/FavoriteManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/github/hidroh/materialistic/data/FavoriteManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/github/hidroh/materialistic/data/FavoriteManager;->Companion:Lio/github/hidroh/materialistic/data/FavoriteManager$Companion;

    return-void
.end method

.method public constructor <init>(Lio/github/hidroh/materialistic/data/LocalCache;Lrx/Scheduler;Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStoriesDao;)V
    .locals 2
    .param p1, "cache"    # Lio/github/hidroh/materialistic/data/LocalCache;
    .param p2, "ioScheduler"    # Lrx/Scheduler;
        .annotation runtime Ljavax/inject/Named;
            value = "io"
        .end annotation
    .end param
    .param p3, "dao"    # Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStoriesDao;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "cache"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioScheduler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dao"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/hidroh/materialistic/data/FavoriteManager;->cache:Lio/github/hidroh/materialistic/data/LocalCache;

    iput-object p2, p0, Lio/github/hidroh/materialistic/data/FavoriteManager;->ioScheduler:Lrx/Scheduler;

    iput-object p3, p0, Lio/github/hidroh/materialistic/data/FavoriteManager;->dao:Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStoriesDao;

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v1, v0

    iput v1, p0, Lio/github/hidroh/materialistic/data/FavoriteManager;->notificationId:I

    .line 81
    new-instance v0, Lio/github/hidroh/materialistic/data/SyncScheduler;

    invoke-direct {v0}, Lio/github/hidroh/materialistic/data/SyncScheduler;-><init>()V

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/FavoriteManager;->syncScheduler:Lio/github/hidroh/materialistic/data/SyncScheduler;

    return-void
.end method

.method public static final synthetic access$delete(Lio/github/hidroh/materialistic/data/FavoriteManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "$this"    # Lio/github/hidroh/materialistic/data/FavoriteManager;
    .param p1, "itemId"    # Ljava/lang/String;

    .line 50
    invoke-direct {p0, p1}, Lio/github/hidroh/materialistic/data/FavoriteManager;->delete(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$deleteMultiple(Lio/github/hidroh/materialistic/data/FavoriteManager;Ljava/lang/String;)I
    .locals 1
    .param p0, "$this"    # Lio/github/hidroh/materialistic/data/FavoriteManager;
    .param p1, "query"    # Ljava/lang/String;

    .line 50
    invoke-direct {p0, p1}, Lio/github/hidroh/materialistic/data/FavoriteManager;->deleteMultiple(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static final synthetic access$getCursor$p(Lio/github/hidroh/materialistic/data/FavoriteManager;)Lio/github/hidroh/materialistic/data/FavoriteManager$Cursor;
    .locals 1
    .param p0, "$this"    # Lio/github/hidroh/materialistic/data/FavoriteManager;

    .line 50
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/FavoriteManager;->cursor:Lio/github/hidroh/materialistic/data/FavoriteManager$Cursor;

    return-object v0
.end method

.method public static final synthetic access$getIoScheduler$p(Lio/github/hidroh/materialistic/data/FavoriteManager;)Lrx/Scheduler;
    .locals 1
    .param p0, "$this"    # Lio/github/hidroh/materialistic/data/FavoriteManager;

    .line 50
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/FavoriteManager;->ioScheduler:Lrx/Scheduler;

    return-object v0
.end method

.method public static final synthetic access$insert(Lio/github/hidroh/materialistic/data/FavoriteManager;Lio/github/hidroh/materialistic/data/WebItem;)V
    .locals 0
    .param p0, "$this"    # Lio/github/hidroh/materialistic/data/FavoriteManager;
    .param p1, "story"    # Lio/github/hidroh/materialistic/data/WebItem;

    .line 50
    invoke-direct {p0, p1}, Lio/github/hidroh/materialistic/data/FavoriteManager;->insert(Lio/github/hidroh/materialistic/data/WebItem;)V

    return-void
.end method

.method public static final synthetic access$notifyExportDone(Lio/github/hidroh/materialistic/data/FavoriteManager;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0
    .param p0, "$this"    # Lio/github/hidroh/materialistic/data/FavoriteManager;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 50
    invoke-direct {p0, p1, p2}, Lio/github/hidroh/materialistic/data/FavoriteManager;->notifyExportDone(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method public static final synthetic access$query(Lio/github/hidroh/materialistic/data/FavoriteManager;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p0, "$this"    # Lio/github/hidroh/materialistic/data/FavoriteManager;
    .param p1, "filter"    # Ljava/lang/String;

    .line 50
    invoke-direct {p0, p1}, Lio/github/hidroh/materialistic/data/FavoriteManager;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$setCursor$p(Lio/github/hidroh/materialistic/data/FavoriteManager;Lio/github/hidroh/materialistic/data/FavoriteManager$Cursor;)V
    .locals 0
    .param p0, "$this"    # Lio/github/hidroh/materialistic/data/FavoriteManager;
    .param p1, "<set-?>"    # Lio/github/hidroh/materialistic/data/FavoriteManager$Cursor;

    .line 50
    iput-object p1, p0, Lio/github/hidroh/materialistic/data/FavoriteManager;->cursor:Lio/github/hidroh/materialistic/data/FavoriteManager$Cursor;

    return-void
.end method

.method public static final synthetic access$toFile(Lio/github/hidroh/materialistic/data/FavoriteManager;Landroid/content/Context;Lio/github/hidroh/materialistic/data/FavoriteManager$Cursor;)Landroid/net/Uri;
    .locals 1
    .param p0, "$this"    # Lio/github/hidroh/materialistic/data/FavoriteManager;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Lio/github/hidroh/materialistic/data/FavoriteManager$Cursor;

    .line 50
    invoke-direct {p0, p1, p2}, Lio/github/hidroh/materialistic/data/FavoriteManager;->toFile(Landroid/content/Context;Lio/github/hidroh/materialistic/data/FavoriteManager$Cursor;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private final createNotificationBuilder(Landroid/content/Context;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 257
    nop

    .line 262
    nop

    .line 257
    nop

    .line 261
    nop

    .line 257
    nop

    .line 260
    nop

    .line 257
    nop

    .line 259
    nop

    .line 257
    nop

    .line 258
    nop

    .line 257
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    const-string v1, "export"

    invoke-direct {v0, p1, v1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 258
    const-string v1, "export"

    const v2, 0x7f100060

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "context.getString(R.string.export_saved_stories)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v0, p1, v1, v3}, Lio/github/hidroh/materialistic/ktx/ExtensionsKt;->setChannel(Landroidx/core/app/NotificationCompat$Builder;Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 259
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v3, 0x7f0e0000

    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    .line 260
    const v1, 0x7f08008b

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 261
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 262
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    return-object v0
.end method

.method private final delete(Ljava/lang/String;)V
    .locals 1
    .param p1, "itemId"    # Ljava/lang/String;

    .line 279
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/FavoriteManager;->dao:Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStoriesDao;

    invoke-interface {v0, p1}, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStoriesDao;->deleteByItemId(Ljava/lang/String;)I

    .line 280
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/FavoriteManager;->loader:Lio/github/hidroh/materialistic/data/FavoriteManager$FavoriteRoomLoader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/github/hidroh/materialistic/data/FavoriteManager$FavoriteRoomLoader;->load()V

    .line 281
    :cond_0
    return-void
.end method

.method private final deleteMultiple(Ljava/lang/String;)I
    .locals 2
    .param p1, "query"    # Ljava/lang/String;

    .line 285
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/github/hidroh/materialistic/data/FavoriteManager;->dao:Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStoriesDao;

    invoke-interface {v0}, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStoriesDao;->deleteAll()I

    move-result v0

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/FavoriteManager;->dao:Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStoriesDao;

    invoke-interface {v0, p1}, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStoriesDao;->deleteByTitle(Ljava/lang/String;)I

    move-result v0

    .line 286
    .local v0, "deleted":I
    :goto_2
    iget-object v1, p0, Lio/github/hidroh/materialistic/data/FavoriteManager;->loader:Lio/github/hidroh/materialistic/data/FavoriteManager$FavoriteRoomLoader;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lio/github/hidroh/materialistic/data/FavoriteManager$FavoriteRoomLoader;->load()V

    .line 287
    :cond_3
    return v0
.end method

.method private final insert(Lio/github/hidroh/materialistic/data/WebItem;)V
    .locals 4
    .param p1, "story"    # Lio/github/hidroh/materialistic/data/WebItem;

    .line 273
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/FavoriteManager;->dao:Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStoriesDao;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStory;

    invoke-static {p1}, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStory;->from(Lio/github/hidroh/materialistic/data/WebItem;)Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStory;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStoriesDao;->insert([Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStory;)V

    .line 274
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/FavoriteManager;->loader:Lio/github/hidroh/materialistic/data/FavoriteManager$FavoriteRoomLoader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/github/hidroh/materialistic/data/FavoriteManager$FavoriteRoomLoader;->load()V

    .line 275
    :cond_0
    return-void
.end method

.method private final notifyExportDone(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 241
    invoke-static {p1}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    const-string v1, "NotificationManagerCompat.from(context)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    .local v0, "manager":Landroidx/core/app/NotificationManagerCompat;
    move-object v1, v0

    .local v1, "$receiver":Landroidx/core/app/NotificationManagerCompat;
    const/4 v2, 0x0

    .line 243
    .local v2, "$i$a$-with-FavoriteManager$notifyExportDone$1":I
    iget v3, p0, Lio/github/hidroh/materialistic/data/FavoriteManager;->notificationId:I

    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationManagerCompat;->cancel(I)V

    .line 244
    if-nez p2, :cond_0

    return-void

    .line 245
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p1, v3, p2, v4}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 246
    iget v3, p0, Lio/github/hidroh/materialistic/data/FavoriteManager;->notificationId:I

    .line 253
    nop

    .line 246
    nop

    .line 250
    nop

    .line 246
    nop

    .line 249
    nop

    .line 246
    nop

    .line 248
    nop

    .line 246
    nop

    .line 247
    nop

    .line 246
    invoke-direct {p0, p1}, Lio/github/hidroh/materialistic/data/FavoriteManager;->createNotificationBuilder(Landroid/content/Context;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    .line 247
    invoke-virtual {v5, v4}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 248
    new-array v4, v4, [J

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    aput-wide v6, v4, v8

    invoke-virtual {v5, v4}, Landroidx/core/app/NotificationCompat$Builder;->setVibrate([J)Landroidx/core/app/NotificationCompat$Builder;

    .line 249
    const v4, 0x7f10005f

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v5, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 250
    nop

    .line 251
    move-object v4, p2

    .local v4, "$receiver$iv":Landroid/net/Uri;
    move-object v6, p1

    .local v6, "context$iv":Landroid/content/Context;
    const/4 v7, 0x0

    .line 320
    .local v7, "$i$f$toSendIntentChooser":I
    invoke-static {v6, v4}, Lio/github/hidroh/materialistic/AppUtils;->makeSendIntentChooser(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 251
    .end local v4    # "$receiver$iv":Landroid/net/Uri;
    .end local v6    # "context$iv":Landroid/content/Context;
    .end local v7    # "$i$f$toSendIntentChooser":I
    const/high16 v4, 0x10000000

    invoke-virtual {v9, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    .line 252
    const/high16 v6, 0x8000000

    .line 250
    invoke-static {p1, v8, v4, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 253
    invoke-virtual {v5}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    .line 246
    invoke-virtual {v1, v3, v4}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    .line 254
    .end local v1    # "$receiver":Landroidx/core/app/NotificationManagerCompat;
    .end local v2    # "$i$a$-with-FavoriteManager$notifyExportDone$1":I
    nop

    .line 242
    nop

    .line 255
    return-void

    .line 320
    .end local v0    # "manager":Landroidx/core/app/NotificationManagerCompat;
    .end local p0    # "this":Lio/github/hidroh/materialistic/data/FavoriteManager;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "uri":Landroid/net/Uri;
    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p1, 0x0

    throw p1
.end method

.method private final notifyExportStart(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 229
    nop

    .line 230
    nop

    .line 229
    invoke-static {p1}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    .line 230
    iget v1, p0, Lio/github/hidroh/materialistic/data/FavoriteManager;->notificationId:I

    .line 237
    nop

    .line 230
    nop

    .line 233
    nop

    .line 230
    nop

    .line 232
    nop

    .line 230
    nop

    .line 231
    nop

    .line 230
    invoke-direct {p0, p1}, Lio/github/hidroh/materialistic/data/FavoriteManager;->createNotificationBuilder(Landroid/content/Context;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 231
    const-string v3, "progress"

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 232
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    .line 233
    nop

    .line 234
    nop

    .line 235
    nop

    .line 234
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lio/github/hidroh/materialistic/FavoriteActivity;

    invoke-direct {v4, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 235
    const/high16 v5, 0x10000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    .line 236
    nop

    .line 233
    const/high16 v5, 0x8000000

    invoke-static {p1, v3, v4, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 237
    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 230
    invoke-virtual {v0, v1, v2}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    .line 238
    return-void
.end method

.method private final query(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .param p1, "filter"    # Ljava/lang/String;

    .line 265
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 266
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/FavoriteManager;->dao:Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStoriesDao;

    invoke-interface {v0}, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStoriesDao;->selectAllToCursor()Landroid/database/Cursor;

    move-result-object v0

    const-string v1, "dao.selectAllToCursor()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 268
    :cond_2
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/FavoriteManager;->dao:Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStoriesDao;

    invoke-interface {v0, p1}, Lio/github/hidroh/materialistic/data/MaterialisticDatabase$SavedStoriesDao;->searchToCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const-string v1, "dao.searchToCursor(filter)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    :goto_2
    nop

    .line 269
    return-object v0
.end method

.method private final toFile(Landroid/content/Context;Lio/github/hidroh/materialistic/data/FavoriteManager$Cursor;)Landroid/net/Uri;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Lio/github/hidroh/materialistic/data/FavoriteManager$Cursor;

    .line 203
    invoke-virtual {p2}, Landroid/database/CursorWrapper;->getCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 204
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "saved"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 205
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    .line 206
    :cond_1
    new-instance v2, Ljava/io/File;

    const-string v3, "materialistic-export.txt"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 207
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v3

    if-nez v3, :cond_2

    return-object v1

    .line 208
    :cond_2
    invoke-static {v2}, Lokio/Okio;->sink(Ljava/io/File;)Lokio/Sink;

    move-result-object v3

    invoke-static {v3}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v3

    .line 209
    .local v3, "bufferedSink":Lokio/BufferedSink;
    move-object v4, v3

    .local v4, "$receiver":Lokio/BufferedSink;
    const/4 v5, 0x0

    .line 210
    .local v5, "$i$a$-with-FavoriteManager$toFile$1":I
    :goto_0
    nop

    .line 211
    invoke-virtual {p2}, Lio/github/hidroh/materialistic/data/FavoriteManager$Cursor;->getFavorite()Lio/github/hidroh/materialistic/data/Favorite;

    move-result-object v6

    .line 212
    .local v6, "item":Lio/github/hidroh/materialistic/data/Favorite;
    invoke-virtual {v6}, Lio/github/hidroh/materialistic/data/Favorite;->getDisplayedTitle()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 213
    const/16 v7, 0xa

    invoke-interface {v4, v7}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 214
    invoke-virtual {v6}, Lio/github/hidroh/materialistic/data/Favorite;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 215
    invoke-interface {v4, v7}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 216
    const-string v8, "https://news.ycombinator.com/item?id=%s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v6}, Lio/github/hidroh/materialistic/data/Favorite;->getId()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    array-length v10, v9

    invoke-static {v9, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v9

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "java.lang.String.format(this, *args)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4, v8}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 217
    invoke-virtual {p2}, Landroid/database/CursorWrapper;->isLast()Z

    move-result v8

    if-nez v8, :cond_3

    .line 218
    invoke-interface {v4, v7}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 219
    invoke-interface {v4, v7}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 221
    :cond_3
    invoke-virtual {p2}, Landroid/database/CursorWrapper;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_5

    .line 222
    .end local v6    # "item":Lio/github/hidroh/materialistic/data/Favorite;
    invoke-interface {v4}, Lokio/BufferedSink;->flush()V

    .line 223
    move-object v6, v4

    check-cast v6, Ljava/io/Closeable;

    .local v6, "$receiver$iv":Ljava/io/Closeable;
    const/4 v7, 0x0

    .line 318
    .local v7, "$i$f$closeQuietly":I
    invoke-static {v6}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 224
    .end local v6    # "$receiver$iv":Ljava/io/Closeable;
    .end local v7    # "$i$f$closeQuietly":I
    nop

    .line 209
    .end local v4    # "$receiver":Lokio/BufferedSink;
    .end local v5    # "$i$a$-with-FavoriteManager$toFile$1":I
    nop

    .line 225
    const-string v4, "io.github.hidroh.materialistic.fileprovider"

    .local v4, "authority$iv":Ljava/lang/String;
    move-object v5, v2

    .local v5, "$receiver$iv":Ljava/io/File;
    const/4 v6, 0x0

    .line 319
    .local v6, "$i$f$getUri":I
    invoke-static {p1, v4, v5}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    if-eqz v7, :cond_4

    .end local v4    # "authority$iv":Ljava/lang/String;
    .end local v5    # "$receiver$iv":Ljava/io/File;
    .end local v6    # "$i$f$getUri":I
    return-object v7

    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "bufferedSink":Lokio/BufferedSink;
    .end local p0    # "this":Lio/github/hidroh/materialistic/data/FavoriteManager;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "cursor":Lio/github/hidroh/materialistic/data/FavoriteManager$Cursor;
    :cond_4
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    .line 221
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "bufferedSink":Lokio/BufferedSink;
    .local v4, "$receiver":Lokio/BufferedSink;
    .local v5, "$i$a$-with-FavoriteManager$toFile$1":I
    .local v6, "item":Lio/github/hidroh/materialistic/data/Favorite;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "cursor":Lio/github/hidroh/materialistic/data/FavoriteManager$Cursor;
    :cond_5
    goto :goto_0
.end method


# virtual methods
.method public final add(Landroid/content/Context;Lio/github/hidroh/materialistic/data/WebItem;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "story"    # Lio/github/hidroh/materialistic/data/WebItem;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "story"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    nop

    .line 144
    nop

    .line 138
    nop

    .line 143
    nop

    .line 138
    nop

    .line 142
    nop

    .line 138
    nop

    .line 141
    nop

    .line 138
    nop

    .line 140
    nop

    .line 138
    nop

    .line 139
    nop

    .line 138
    new-instance v0, Lio/github/hidroh/materialistic/data/FavoriteManager$add$1;

    invoke-direct {v0, p2}, Lio/github/hidroh/materialistic/data/FavoriteManager$add$1;-><init>(Lio/github/hidroh/materialistic/data/WebItem;)V

    check-cast v0, Lrx/functions/Func0;

    invoke-static {v0}, Lrx/Observable;->defer(Lrx/functions/Func0;)Lrx/Observable;

    move-result-object v0

    .line 139
    new-instance v1, Lio/github/hidroh/materialistic/data/FavoriteManager$add$2;

    invoke-direct {v1, p0}, Lio/github/hidroh/materialistic/data/FavoriteManager$add$2;-><init>(Lio/github/hidroh/materialistic/data/FavoriteManager;)V

    check-cast v1, Lrx/functions/Action1;

    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    .line 140
    sget-object v1, Lio/github/hidroh/materialistic/data/FavoriteManager$add$3;->INSTANCE:Lio/github/hidroh/materialistic/data/FavoriteManager$add$3;

    check-cast v1, Lrx/functions/Func1;

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 141
    new-instance v1, Lio/github/hidroh/materialistic/data/FavoriteManager$add$4;

    invoke-direct {v1, p2}, Lio/github/hidroh/materialistic/data/FavoriteManager$add$4;-><init>(Lio/github/hidroh/materialistic/data/WebItem;)V

    check-cast v1, Lrx/functions/Func1;

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 142
    iget-object v1, p0, Lio/github/hidroh/materialistic/data/FavoriteManager;->ioScheduler:Lrx/Scheduler;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 143
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 144
    new-instance v1, Lio/github/hidroh/materialistic/data/FavoriteManager$add$5;

    invoke-direct {v1, p1}, Lio/github/hidroh/materialistic/data/FavoriteManager$add$5;-><init>(Landroid/content/Context;)V

    check-cast v1, Lrx/functions/Action1;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 145
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/FavoriteManager;->syncScheduler:Lio/github/hidroh/materialistic/data/SyncScheduler;

    invoke-interface {p2}, Lio/github/hidroh/materialistic/data/WebItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lio/github/hidroh/materialistic/data/SyncScheduler;->scheduleSync(Landroid/content/Context;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public attach(Lio/github/hidroh/materialistic/data/LocalItemManager$Observer;Ljava/lang/String;)V
    .locals 1
    .param p1, "observer"    # Lio/github/hidroh/materialistic/data/LocalItemManager$Observer;
    .param p2, "filter"    # Ljava/lang/String;

    const-string v0, "observer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    new-instance v0, Lio/github/hidroh/materialistic/data/FavoriteManager$FavoriteRoomLoader;

    invoke-direct {v0, p0, p2, p1}, Lio/github/hidroh/materialistic/data/FavoriteManager$FavoriteRoomLoader;-><init>(Lio/github/hidroh/materialistic/data/FavoriteManager;Ljava/lang/String;Lio/github/hidroh/materialistic/data/LocalItemManager$Observer;)V

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/FavoriteManager;->loader:Lio/github/hidroh/materialistic/data/FavoriteManager$FavoriteRoomLoader;

    .line 95
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/FavoriteManager;->loader:Lio/github/hidroh/materialistic/data/FavoriteManager$FavoriteRoomLoader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/github/hidroh/materialistic/data/FavoriteManager$FavoriteRoomLoader;->load()V

    .line 96
    return-void

    .line 95
    .end local p0    # "this":Lio/github/hidroh/materialistic/data/FavoriteManager;
    .end local p1    # "observer":Lio/github/hidroh/materialistic/data/LocalItemManager$Observer;
    .end local p2    # "filter":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final check(Ljava/lang/String;)Lrx/Observable;
    .locals 2
    .param p1, "itemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 195
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 196
    goto :goto_2

    .line 198
    :cond_2
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/FavoriteManager;->cache:Lio/github/hidroh/materialistic/data/LocalCache;

    invoke-interface {v0, p1}, Lio/github/hidroh/materialistic/data/LocalCache;->isFavorite(Ljava/lang/String;)Z

    move-result v1

    .line 195
    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 199
    return-object v0

    .line 195
    .end local p0    # "this":Lio/github/hidroh/materialistic/data/FavoriteManager;
    .end local p1    # "itemId":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final clear(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "query"    # Ljava/lang/String;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    nop

    .line 159
    nop

    .line 155
    nop

    .line 158
    nop

    .line 155
    nop

    .line 157
    nop

    .line 155
    nop

    .line 156
    nop

    .line 155
    new-instance v0, Lio/github/hidroh/materialistic/data/FavoriteManager$clear$1;

    invoke-direct {v0, p2}, Lio/github/hidroh/materialistic/data/FavoriteManager$clear$1;-><init>(Ljava/lang/String;)V

    check-cast v0, Lrx/functions/Func0;

    invoke-static {v0}, Lrx/Observable;->defer(Lrx/functions/Func0;)Lrx/Observable;

    move-result-object v0

    .line 156
    new-instance v1, Lio/github/hidroh/materialistic/data/FavoriteManager$clear$2;

    invoke-direct {v1, p0}, Lio/github/hidroh/materialistic/data/FavoriteManager$clear$2;-><init>(Lio/github/hidroh/materialistic/data/FavoriteManager;)V

    check-cast v1, Lrx/functions/Func1;

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 157
    iget-object v1, p0, Lio/github/hidroh/materialistic/data/FavoriteManager;->ioScheduler:Lrx/Scheduler;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 158
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 159
    new-instance v1, Lio/github/hidroh/materialistic/data/FavoriteManager$clear$3;

    invoke-direct {v1, p1}, Lio/github/hidroh/materialistic/data/FavoriteManager$clear$3;-><init>(Landroid/content/Context;)V

    check-cast v1, Lrx/functions/Action1;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 160
    return-void
.end method

.method public detach()V
    .locals 2

    .line 99
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/FavoriteManager;->cursor:Lio/github/hidroh/materialistic/data/FavoriteManager$Cursor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 100
    move-object v0, v1

    check-cast v0, Lio/github/hidroh/materialistic/data/FavoriteManager$Cursor;

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/FavoriteManager;->cursor:Lio/github/hidroh/materialistic/data/FavoriteManager$Cursor;

    .line 102
    :cond_0
    check-cast v1, Lio/github/hidroh/materialistic/data/FavoriteManager$FavoriteRoomLoader;

    iput-object v1, p0, Lio/github/hidroh/materialistic/data/FavoriteManager;->loader:Lio/github/hidroh/materialistic/data/FavoriteManager$FavoriteRoomLoader;

    .line 103
    return-void
.end method

.method public final export(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "query"    # Ljava/lang/String;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 112
    .local v0, "appContext":Landroid/content/Context;
    const-string v1, "appContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lio/github/hidroh/materialistic/data/FavoriteManager;->notifyExportStart(Landroid/content/Context;)V

    .line 113
    nop

    .line 129
    nop

    .line 113
    nop

    .line 128
    nop

    .line 113
    nop

    .line 127
    nop

    .line 113
    nop

    .line 126
    nop

    .line 113
    nop

    .line 125
    nop

    .line 113
    nop

    .line 116
    nop

    .line 113
    nop

    .line 115
    nop

    .line 113
    nop

    .line 114
    nop

    .line 113
    new-instance v1, Lio/github/hidroh/materialistic/data/FavoriteManager$export$1;

    invoke-direct {v1, p2}, Lio/github/hidroh/materialistic/data/FavoriteManager$export$1;-><init>(Ljava/lang/String;)V

    check-cast v1, Lrx/functions/Func0;

    invoke-static {v1}, Lrx/Observable;->defer(Lrx/functions/Func0;)Lrx/Observable;

    move-result-object v1

    .line 114
    new-instance v2, Lio/github/hidroh/materialistic/data/FavoriteManager$export$2;

    invoke-direct {v2, p0}, Lio/github/hidroh/materialistic/data/FavoriteManager$export$2;-><init>(Lio/github/hidroh/materialistic/data/FavoriteManager;)V

    check-cast v2, Lrx/functions/Func1;

    invoke-virtual {v1, v2}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    .line 115
    sget-object v2, Lio/github/hidroh/materialistic/data/FavoriteManager$export$3;->INSTANCE:Lio/github/hidroh/materialistic/data/FavoriteManager$export$3;

    check-cast v2, Lrx/functions/Func1;

    invoke-virtual {v1, v2}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    .line 116
    new-instance v2, Lio/github/hidroh/materialistic/data/FavoriteManager$export$4;

    invoke-direct {v2, p0, v0}, Lio/github/hidroh/materialistic/data/FavoriteManager$export$4;-><init>(Lio/github/hidroh/materialistic/data/FavoriteManager;Landroid/content/Context;)V

    check-cast v2, Lrx/functions/Func1;

    invoke-virtual {v1, v2}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    .line 125
    sget-object v2, Lio/github/hidroh/materialistic/data/FavoriteManager$export$5;->INSTANCE:Lio/github/hidroh/materialistic/data/FavoriteManager$export$5;

    check-cast v2, Lrx/functions/Func1;

    invoke-virtual {v1, v2}, Lrx/Observable;->onErrorReturn(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    .line 126
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lrx/Observable;->defaultIfEmpty(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v1

    .line 127
    iget-object v2, p0, Lio/github/hidroh/materialistic/data/FavoriteManager;->ioScheduler:Lrx/Scheduler;

    invoke-virtual {v1, v2}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v1

    .line 128
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v1

    .line 129
    new-instance v2, Lio/github/hidroh/materialistic/data/FavoriteManager$export$6;

    invoke-direct {v2, p0, v0}, Lio/github/hidroh/materialistic/data/FavoriteManager$export$6;-><init>(Lio/github/hidroh/materialistic/data/FavoriteManager;Landroid/content/Context;)V

    check-cast v2, Lrx/functions/Action1;

    invoke-virtual {v1, v2}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 130
    return-void
.end method

.method public getItem(I)Lio/github/hidroh/materialistic/data/Favorite;
    .locals 3
    .param p1, "position"    # I

    .line 87
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/FavoriteManager;->cursor:Lio/github/hidroh/materialistic/data/FavoriteManager$Cursor;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/database/CursorWrapper;->moveToPosition(I)Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 88
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/FavoriteManager;->cursor:Lio/github/hidroh/materialistic/data/FavoriteManager$Cursor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/github/hidroh/materialistic/data/FavoriteManager$Cursor;->getFavorite()Lio/github/hidroh/materialistic/data/Favorite;

    move-result-object v1

    goto :goto_0

    .end local p0    # "this":Lio/github/hidroh/materialistic/data/FavoriteManager;
    .end local p1    # "position":I
    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    .line 90
    .restart local p1    # "position":I
    :cond_1
    nop

    .line 87
    :goto_0
    nop

    .line 91
    return-object v1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lio/github/hidroh/materialistic/data/FavoriteManager;->getItem(I)Lio/github/hidroh/materialistic/data/Favorite;

    move-result-object p1

    return-object p1
.end method

.method public getSize()I
    .locals 1

    .line 85
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/FavoriteManager;->cursor:Lio/github/hidroh/materialistic/data/FavoriteManager$Cursor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/CursorWrapper;->getCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final remove(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "itemId"    # Ljava/lang/String;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    if-nez p2, :cond_0

    return-void

    .line 170
    :cond_0
    nop

    .line 175
    nop

    .line 170
    nop

    .line 174
    nop

    .line 170
    nop

    .line 173
    nop

    .line 170
    nop

    .line 172
    nop

    .line 170
    nop

    .line 171
    nop

    .line 170
    new-instance v0, Lio/github/hidroh/materialistic/data/FavoriteManager$remove$1;

    invoke-direct {v0, p2}, Lio/github/hidroh/materialistic/data/FavoriteManager$remove$1;-><init>(Ljava/lang/String;)V

    check-cast v0, Lrx/functions/Func0;

    invoke-static {v0}, Lrx/Observable;->defer(Lrx/functions/Func0;)Lrx/Observable;

    move-result-object v0

    .line 171
    new-instance v1, Lio/github/hidroh/materialistic/data/FavoriteManager$remove$2;

    invoke-direct {v1, p0}, Lio/github/hidroh/materialistic/data/FavoriteManager$remove$2;-><init>(Lio/github/hidroh/materialistic/data/FavoriteManager;)V

    check-cast v1, Lrx/functions/Action1;

    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    .line 172
    sget-object v1, Lio/github/hidroh/materialistic/data/FavoriteManager$remove$3;->INSTANCE:Lio/github/hidroh/materialistic/data/FavoriteManager$remove$3;

    check-cast v1, Lrx/functions/Func1;

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 173
    iget-object v1, p0, Lio/github/hidroh/materialistic/data/FavoriteManager;->ioScheduler:Lrx/Scheduler;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 174
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 175
    new-instance v1, Lio/github/hidroh/materialistic/data/FavoriteManager$remove$4;

    invoke-direct {v1, p1}, Lio/github/hidroh/materialistic/data/FavoriteManager$remove$4;-><init>(Landroid/content/Context;)V

    check-cast v1, Lrx/functions/Action1;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 176
    return-void
.end method

.method public final remove(Landroid/content/Context;Ljava/util/Collection;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "itemIds"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    :goto_0
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 186
    :cond_1
    nop

    .line 191
    nop

    .line 186
    nop

    .line 190
    nop

    .line 186
    nop

    .line 189
    nop

    .line 186
    nop

    .line 188
    nop

    .line 186
    nop

    .line 187
    nop

    .line 186
    new-instance v0, Lio/github/hidroh/materialistic/data/FavoriteManager$remove$5;

    invoke-direct {v0, p2}, Lio/github/hidroh/materialistic/data/FavoriteManager$remove$5;-><init>(Ljava/util/Collection;)V

    check-cast v0, Lrx/functions/Func0;

    invoke-static {v0}, Lrx/Observable;->defer(Lrx/functions/Func0;)Lrx/Observable;

    move-result-object v0

    .line 187
    iget-object v1, p0, Lio/github/hidroh/materialistic/data/FavoriteManager;->ioScheduler:Lrx/Scheduler;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 188
    new-instance v1, Lio/github/hidroh/materialistic/data/FavoriteManager$remove$6;

    invoke-direct {v1, p0}, Lio/github/hidroh/materialistic/data/FavoriteManager$remove$6;-><init>(Lio/github/hidroh/materialistic/data/FavoriteManager;)V

    check-cast v1, Lrx/functions/Action1;

    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    .line 189
    sget-object v1, Lio/github/hidroh/materialistic/data/FavoriteManager$remove$7;->INSTANCE:Lio/github/hidroh/materialistic/data/FavoriteManager$remove$7;

    check-cast v1, Lrx/functions/Func1;

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 190
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 191
    new-instance v1, Lio/github/hidroh/materialistic/data/FavoriteManager$remove$8;

    invoke-direct {v1, p1}, Lio/github/hidroh/materialistic/data/FavoriteManager$remove$8;-><init>(Landroid/content/Context;)V

    check-cast v1, Lrx/functions/Action1;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 192
    return-void
.end method
