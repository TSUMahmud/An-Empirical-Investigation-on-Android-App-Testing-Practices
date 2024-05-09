.class public Lio/github/hidroh/materialistic/accounts/UserServicesClient;
.super Ljava/lang/Object;
.source "UserServicesClient.java"

# interfaces
.implements Lio/github/hidroh/materialistic/accounts/UserServices;


# static fields
.field private static final BASE_WEB_URL:Ljava/lang/String; = "https://news.ycombinator.com"

.field private static final COMMENT_PARAM_PARENT:Ljava/lang/String; = "parent"

.field private static final COMMENT_PARAM_TEXT:Ljava/lang/String; = "text"

.field private static final COMMENT_PATH:Ljava/lang/String; = "comment"

.field private static final CREATING_TRUE:Ljava/lang/String; = "t"

.field private static final DEFAULT_FNOP:Ljava/lang/String; = "submit-page"

.field private static final DEFAULT_REDIRECT:Ljava/lang/String; = "news"

.field private static final DEFAULT_SUBMIT_REDIRECT:Ljava/lang/String; = "newest"

.field private static final HEADER_COOKIE:Ljava/lang/String; = "cookie"

.field private static final HEADER_LOCATION:Ljava/lang/String; = "location"

.field private static final HEADER_SET_COOKIE:Ljava/lang/String; = "set-cookie"

.field private static final ITEM_PARAM_ID:Ljava/lang/String; = "id"

.field private static final ITEM_PATH:Ljava/lang/String; = "item"

.field private static final LOGIN_PARAM_ACCT:Ljava/lang/String; = "acct"

.field private static final LOGIN_PARAM_CREATING:Ljava/lang/String; = "creating"

.field private static final LOGIN_PARAM_GOTO:Ljava/lang/String; = "goto"

.field private static final LOGIN_PARAM_PW:Ljava/lang/String; = "pw"

.field private static final LOGIN_PATH:Ljava/lang/String; = "login"

.field private static final REGEX_CREATE_ERROR_BODY:Ljava/lang/String; = "<body>([^<]*)"

.field private static final REGEX_INPUT:Ljava/lang/String; = "<\\s*input[^>]*>"

.field private static final REGEX_VALUE:Ljava/lang/String; = "value[^\"]*\"([^\"]*)\""

.field private static final SUBMIT_PARAM_FNID:Ljava/lang/String; = "fnid"

.field private static final SUBMIT_PARAM_FNOP:Ljava/lang/String; = "fnop"

.field private static final SUBMIT_PARAM_TEXT:Ljava/lang/String; = "text"

.field private static final SUBMIT_PARAM_TITLE:Ljava/lang/String; = "title"

.field private static final SUBMIT_PARAM_URL:Ljava/lang/String; = "url"

.field private static final SUBMIT_PATH:Ljava/lang/String; = "submit"

.field private static final SUBMIT_POST_PATH:Ljava/lang/String; = "r"

.field private static final VOTE_DIR_UP:Ljava/lang/String; = "up"

.field private static final VOTE_PARAM_HOW:Ljava/lang/String; = "how"

.field private static final VOTE_PARAM_ID:Ljava/lang/String; = "id"

.field private static final VOTE_PATH:Ljava/lang/String; = "vote"


# instance fields
.field private final mCallFactory:Lokhttp3/Call$Factory;

.field private final mIoScheduler:Lrx/Scheduler;


# direct methods
.method public constructor <init>(Lokhttp3/Call$Factory;Lrx/Scheduler;)V
    .locals 0
    .param p1, "callFactory"    # Lokhttp3/Call$Factory;
    .param p2, "ioScheduler"    # Lrx/Scheduler;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lio/github/hidroh/materialistic/accounts/UserServicesClient;->mCallFactory:Lokhttp3/Call$Factory;

    .line 82
    iput-object p2, p0, Lio/github/hidroh/materialistic/accounts/UserServicesClient;->mIoScheduler:Lrx/Scheduler;

    .line 83
    return-void
.end method

.method private buildException(Landroid/net/Uri;)Ljava/lang/Throwable;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .line 265
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x317b13

    if-eq v1, v2, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v1, "item"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 274
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    return-object v0

    .line 267
    :cond_2
    new-instance v0, Lio/github/hidroh/materialistic/accounts/UserServices$Exception;

    const v1, 0x7f100088

    invoke-direct {v0, v1}, Lio/github/hidroh/materialistic/accounts/UserServices$Exception;-><init>(I)V

    .line 268
    .local v0, "exception":Lio/github/hidroh/materialistic/accounts/UserServices$Exception;
    const-string v1, "id"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, "itemId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 270
    invoke-static {v1}, Lio/github/hidroh/materialistic/AppUtils;->createItemUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v0, Lio/github/hidroh/materialistic/accounts/UserServices$Exception;->data:Landroid/net/Uri;

    .line 272
    :cond_3
    return-object v0
.end method

.method private execute(Lokhttp3/Request;)Lrx/Observable;
    .locals 2
    .param p1, "request"    # Lokhttp3/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Request;",
            ")",
            "Lrx/Observable<",
            "Lokhttp3/Response;",
            ">;"
        }
    .end annotation

    .line 255
    new-instance v0, Lio/github/hidroh/materialistic/accounts/-$$Lambda$UserServicesClient$kzVactvnnyiNZnTVOjaJ8JnQJEA;

    invoke-direct {v0, p0, p1}, Lio/github/hidroh/materialistic/accounts/-$$Lambda$UserServicesClient$kzVactvnnyiNZnTVOjaJ8JnQJEA;-><init>(Lio/github/hidroh/materialistic/accounts/UserServicesClient;Lokhttp3/Request;)V

    invoke-static {v0}, Lrx/Observable;->defer(Lrx/functions/Func0;)Lrx/Observable;

    move-result-object v0

    iget-object v1, p0, Lio/github/hidroh/materialistic/accounts/UserServicesClient;->mIoScheduler:Lrx/Scheduler;

    .line 261
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 255
    return-object v0
.end method

.method private getInputValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "html"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 280
    const-string v0, "<\\s*input[^>]*>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 281
    .local v0, "matcherInput":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 282
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 283
    .local v1, "input":Ljava/lang/String;
    invoke-virtual {v1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 285
    const-string v3, "value[^\"]*\"([^\"]*)\""

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 286
    .local v3, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    :cond_0
    return-object v2

    .line 288
    .end local v1    # "input":Ljava/lang/String;
    .end local v3    # "matcher":Ljava/util/regex/Matcher;
    :cond_1
    goto :goto_0

    .line 289
    :cond_2
    return-object v2
.end method

.method public static synthetic lambda$execute$10(Lio/github/hidroh/materialistic/accounts/UserServicesClient;Lokhttp3/Request;)Lrx/Observable;
    .locals 2
    .param p1, "request"    # Lokhttp3/Request;

    .line 257
    :try_start_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/accounts/UserServicesClient;->mCallFactory:Lokhttp3/Call$Factory;

    invoke-interface {v0, p1}, Lokhttp3/Call$Factory;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lrx/Observable;->error(Ljava/lang/Throwable;)Lrx/Observable;

    move-result-object v1

    return-object v1
.end method

.method public static synthetic lambda$login$0(Lio/github/hidroh/materialistic/accounts/UserServicesClient;Lokhttp3/Response;)Lrx/Observable;
    .locals 2
    .param p1, "response"    # Lokhttp3/Response;

    .line 89
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 90
    new-instance v0, Lio/github/hidroh/materialistic/accounts/UserServices$Exception;

    invoke-direct {p0, p1}, Lio/github/hidroh/materialistic/accounts/UserServicesClient;->parseLoginError(Lokhttp3/Response;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/github/hidroh/materialistic/accounts/UserServices$Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lrx/Observable;->error(Ljava/lang/Throwable;)Lrx/Observable;

    move-result-object v0

    return-object v0

    .line 92
    :cond_0
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v0

    const/16 v1, 0x12e

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$reply$2(Lokhttp3/Response;)Ljava/lang/Boolean;
    .locals 2
    .param p0, "response"    # Lokhttp3/Response;

    .line 120
    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    move-result v0

    const/16 v1, 0x12e

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$submit$3(Lokhttp3/Response;)Lrx/Observable;
    .locals 2
    .param p0, "response"    # Lokhttp3/Response;

    .line 143
    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    move-result v0

    const/16 v1, 0x12e

    if-eq v0, v1, :cond_0

    .line 144
    invoke-static {p0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    .line 145
    invoke-static {v0}, Lrx/Observable;->error(Ljava/lang/Throwable;)Lrx/Observable;

    move-result-object v0

    .line 143
    :goto_0
    return-object v0
.end method

.method static synthetic lambda$submit$4(Lokhttp3/Response;)Lrx/Observable;
    .locals 3
    .param p0, "response"    # Lokhttp3/Response;

    .line 148
    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "set-cookie"

    .line 149
    invoke-virtual {p0, v2}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 150
    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 148
    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    invoke-virtual {p0}, Lokhttp3/Response;->close()V

    .line 148
    return-object v0

    .line 155
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    invoke-static {v0}, Lrx/Observable;->error(Ljava/lang/Throwable;)Lrx/Observable;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    invoke-virtual {p0}, Lokhttp3/Response;->close()V

    .line 153
    return-object v1

    .line 155
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    invoke-virtual {p0}, Lokhttp3/Response;->close()V

    .line 156
    throw v0
.end method

.method public static synthetic lambda$submit$5(Lio/github/hidroh/materialistic/accounts/UserServicesClient;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "array"    # [Ljava/lang/String;

    .line 159
    const/4 v0, 0x1

    aget-object v1, p1, v0

    const-string v2, "fnid"

    invoke-direct {p0, v1, v2}, Lio/github/hidroh/materialistic/accounts/UserServicesClient;->getInputValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 160
    return-object p1
.end method

.method static synthetic lambda$submit$6([Ljava/lang/String;)Lrx/Observable;
    .locals 1
    .param p0, "array"    # [Ljava/lang/String;

    .line 162
    const/4 v0, 0x1

    aget-object v0, p0, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    invoke-static {p0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    .line 164
    invoke-static {v0}, Lrx/Observable;->error(Ljava/lang/Throwable;)Lrx/Observable;

    move-result-object v0

    .line 162
    :goto_0
    return-object v0
.end method

.method public static synthetic lambda$submit$7(Lio/github/hidroh/materialistic/accounts/UserServicesClient;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)Lrx/Observable;
    .locals 7
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "isUrl"    # Z
    .param p4, "array"    # [Ljava/lang/String;

    .line 165
    const/4 v0, 0x0

    aget-object v5, p4, v0

    const/4 v0, 0x1

    aget-object v6, p4, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v6}, Lio/github/hidroh/materialistic/accounts/UserServicesClient;->postSubmit(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lokhttp3/Request;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/github/hidroh/materialistic/accounts/UserServicesClient;->execute(Lokhttp3/Request;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$submit$8(Lokhttp3/Response;)Lrx/Observable;
    .locals 2
    .param p0, "response"    # Lokhttp3/Response;

    .line 166
    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    move-result v0

    const/16 v1, 0x12e

    if-ne v0, v1, :cond_0

    const-string v0, "location"

    .line 167
    invoke-virtual {p0, v0}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    .line 168
    invoke-static {v0}, Lrx/Observable;->error(Ljava/lang/Throwable;)Lrx/Observable;

    move-result-object v0

    .line 166
    :goto_0
    return-object v0
.end method

.method public static synthetic lambda$submit$9(Lio/github/hidroh/materialistic/accounts/UserServicesClient;Landroid/net/Uri;)Lrx/Observable;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 169
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "newest"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 170
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    goto :goto_0

    .line 171
    :cond_0
    invoke-direct {p0, p1}, Lio/github/hidroh/materialistic/accounts/UserServicesClient;->buildException(Landroid/net/Uri;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->error(Ljava/lang/Throwable;)Lrx/Observable;

    move-result-object v0

    .line 169
    :goto_0
    return-object v0
.end method

.method static synthetic lambda$voteUp$1(Lokhttp3/Response;)Ljava/lang/Boolean;
    .locals 2
    .param p0, "response"    # Lokhttp3/Response;

    .line 106
    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    move-result v0

    const/16 v1, 0x12e

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private parseLoginError(Lokhttp3/Response;)Ljava/lang/String;
    .locals 5
    .param p1, "response"    # Lokhttp3/Response;

    .line 294
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "<body>([^<]*)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 295
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\n|\\r|\\t|\\s+"

    const-string v4, " "

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    .line 296
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    :catch_0
    move-exception v1

    .line 297
    .local v1, "e":Ljava/io/IOException;
    return-object v0
.end method

.method private postLogin(Ljava/lang/String;Ljava/lang/String;Z)Lokhttp3/Request;
    .locals 4
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "createAccount"    # Z

    .line 177
    new-instance v0, Lokhttp3/FormBody$Builder;

    invoke-direct {v0}, Lokhttp3/FormBody$Builder;-><init>()V

    const-string v1, "acct"

    .line 178
    invoke-virtual {v0, v1, p1}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v0

    const-string v1, "pw"

    .line 179
    invoke-virtual {v0, v1, p2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v0

    const-string v1, "goto"

    const-string v2, "news"

    .line 180
    invoke-virtual {v0, v1, v2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v0

    .line 181
    .local v0, "formBuilder":Lokhttp3/FormBody$Builder;
    if-eqz p3, :cond_0

    .line 182
    const-string v1, "creating"

    const-string v2, "t"

    invoke-virtual {v0, v1, v2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 184
    :cond_0
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    const-string v2, "https://news.ycombinator.com"

    .line 185
    invoke-static {v2}, Lokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v2

    .line 186
    invoke-virtual {v2}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object v2

    const-string v3, "login"

    .line 187
    invoke-virtual {v2, v3}, Lokhttp3/HttpUrl$Builder;->addPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v2

    .line 188
    invoke-virtual {v2}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v2

    .line 185
    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 189
    invoke-virtual {v0}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 190
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 184
    return-object v1
.end method

.method private postReply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request;
    .locals 3
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;

    .line 209
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    const-string v1, "https://news.ycombinator.com"

    .line 210
    invoke-static {v1}, Lokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v1

    .line 211
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object v1

    const-string v2, "comment"

    .line 212
    invoke-virtual {v1, v2}, Lokhttp3/HttpUrl$Builder;->addPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v1

    .line 213
    invoke-virtual {v1}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v1

    .line 210
    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v0

    new-instance v1, Lokhttp3/FormBody$Builder;

    invoke-direct {v1}, Lokhttp3/FormBody$Builder;-><init>()V

    const-string v2, "acct"

    .line 215
    invoke-virtual {v1, v2, p3}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v1

    const-string v2, "pw"

    .line 216
    invoke-virtual {v1, v2, p4}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v1

    const-string v2, "parent"

    .line 217
    invoke-virtual {v1, v2, p1}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v1

    const-string v2, "text"

    .line 218
    invoke-virtual {v1, v2, p2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v1

    .line 219
    invoke-virtual {v1}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object v1

    .line 214
    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 220
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 209
    return-object v0
.end method

.method private postSubmit(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lokhttp3/Request;
    .locals 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "isUrl"    # Z
    .param p4, "cookie"    # Ljava/lang/String;
    .param p5, "fnid"    # Ljava/lang/String;

    .line 237
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    const-string v1, "https://news.ycombinator.com"

    .line 238
    invoke-static {v1}, Lokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v1

    .line 239
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object v1

    const-string v2, "r"

    .line 240
    invoke-virtual {v1, v2}, Lokhttp3/HttpUrl$Builder;->addPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v1

    .line 241
    invoke-virtual {v1}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v1

    .line 238
    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v0

    new-instance v1, Lokhttp3/FormBody$Builder;

    invoke-direct {v1}, Lokhttp3/FormBody$Builder;-><init>()V

    const-string v2, "fnid"

    .line 243
    invoke-virtual {v1, v2, p5}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v1

    const-string v2, "fnop"

    const-string v3, "submit-page"

    .line 244
    invoke-virtual {v1, v2, v3}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v1

    const-string v2, "title"

    .line 245
    invoke-virtual {v1, v2, p1}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v1

    if-eqz p3, :cond_0

    const-string v2, "url"

    goto :goto_0

    :cond_0
    const-string v2, "text"

    .line 246
    :goto_0
    invoke-virtual {v1, v2, p2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v1

    .line 247
    invoke-virtual {v1}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object v1

    .line 242
    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 248
    .local v0, "builder":Lokhttp3/Request$Builder;
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 249
    const-string v1, "cookie"

    invoke-virtual {v0, v1, p4}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 251
    :cond_1
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    return-object v1
.end method

.method private postSubmitForm(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request;
    .locals 3
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .line 224
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    const-string v1, "https://news.ycombinator.com"

    .line 225
    invoke-static {v1}, Lokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v1

    .line 226
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object v1

    const-string v2, "submit"

    .line 227
    invoke-virtual {v1, v2}, Lokhttp3/HttpUrl$Builder;->addPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v1

    .line 228
    invoke-virtual {v1}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v1

    .line 225
    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v0

    new-instance v1, Lokhttp3/FormBody$Builder;

    invoke-direct {v1}, Lokhttp3/FormBody$Builder;-><init>()V

    const-string v2, "acct"

    .line 230
    invoke-virtual {v1, v2, p1}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v1

    const-string v2, "pw"

    .line 231
    invoke-virtual {v1, v2, p2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v1

    .line 232
    invoke-virtual {v1}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object v1

    .line 229
    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 233
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 224
    return-object v0
.end method

.method private postVote(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request;
    .locals 4
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "itemId"    # Ljava/lang/String;

    .line 194
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    const-string v1, "https://news.ycombinator.com"

    .line 195
    invoke-static {v1}, Lokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v1

    .line 196
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object v1

    const-string v2, "vote"

    .line 197
    invoke-virtual {v1, v2}, Lokhttp3/HttpUrl$Builder;->addPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v1

    .line 198
    invoke-virtual {v1}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v1

    .line 195
    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v0

    new-instance v1, Lokhttp3/FormBody$Builder;

    invoke-direct {v1}, Lokhttp3/FormBody$Builder;-><init>()V

    const-string v2, "acct"

    .line 200
    invoke-virtual {v1, v2, p1}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v1

    const-string v2, "pw"

    .line 201
    invoke-virtual {v1, v2, p2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v1

    const-string v2, "id"

    .line 202
    invoke-virtual {v1, v2, p3}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v1

    const-string v2, "how"

    const-string v3, "up"

    .line 203
    invoke-virtual {v1, v2, v3}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v1

    .line 204
    invoke-virtual {v1}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object v1

    .line 199
    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 205
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 194
    return-object v0
.end method


# virtual methods
.method public login(Ljava/lang/String;Ljava/lang/String;ZLio/github/hidroh/materialistic/accounts/UserServices$Callback;)V
    .locals 3
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "createAccount"    # Z
    .param p4, "callback"    # Lio/github/hidroh/materialistic/accounts/UserServices$Callback;

    .line 87
    invoke-direct {p0, p1, p2, p3}, Lio/github/hidroh/materialistic/accounts/UserServicesClient;->postLogin(Ljava/lang/String;Ljava/lang/String;Z)Lokhttp3/Request;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/github/hidroh/materialistic/accounts/UserServicesClient;->execute(Lokhttp3/Request;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lio/github/hidroh/materialistic/accounts/-$$Lambda$UserServicesClient$ktQS2OJnauS8XdG4bUVJctLfQZo;

    invoke-direct {v1, p0}, Lio/github/hidroh/materialistic/accounts/-$$Lambda$UserServicesClient$ktQS2OJnauS8XdG4bUVJctLfQZo;-><init>(Lio/github/hidroh/materialistic/accounts/UserServicesClient;)V

    .line 88
    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 94
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lio/github/hidroh/materialistic/accounts/-$$Lambda$8qfyghait5kJ2vURUpB46xAyu4g;

    invoke-direct {v1, p4}, Lio/github/hidroh/materialistic/accounts/-$$Lambda$8qfyghait5kJ2vURUpB46xAyu4g;-><init>(Lio/github/hidroh/materialistic/accounts/UserServices$Callback;)V

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lio/github/hidroh/materialistic/accounts/-$$Lambda$ftObPHatfvs0SdtAqv9yuyu0Xuk;

    invoke-direct {v2, p4}, Lio/github/hidroh/materialistic/accounts/-$$Lambda$ftObPHatfvs0SdtAqv9yuyu0Xuk;-><init>(Lio/github/hidroh/materialistic/accounts/UserServices$Callback;)V

    .line 95
    invoke-virtual {v0, v1, v2}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    .line 96
    return-void
.end method

.method public reply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lio/github/hidroh/materialistic/accounts/UserServices$Callback;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parentId"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "callback"    # Lio/github/hidroh/materialistic/accounts/UserServices$Callback;

    .line 114
    invoke-static {p1}, Lio/github/hidroh/materialistic/AppUtils;->getCredentials(Landroid/content/Context;)Landroidx/core/util/Pair;

    move-result-object v0

    .line 115
    .local v0, "credentials":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 116
    const/4 v1, 0x0

    invoke-virtual {p4, v1}, Lio/github/hidroh/materialistic/accounts/UserServices$Callback;->onDone(Z)V

    .line 117
    return-void

    .line 119
    :cond_0
    iget-object v1, v0, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, p2, p3, v1, v2}, Lio/github/hidroh/materialistic/accounts/UserServicesClient;->postReply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request;

    move-result-object v1

    invoke-direct {p0, v1}, Lio/github/hidroh/materialistic/accounts/UserServicesClient;->execute(Lokhttp3/Request;)Lrx/Observable;

    move-result-object v1

    sget-object v2, Lio/github/hidroh/materialistic/accounts/-$$Lambda$UserServicesClient$yiKaFZ3Y6mJAgJNb76G16gUbuVU;->INSTANCE:Lio/github/hidroh/materialistic/accounts/-$$Lambda$UserServicesClient$yiKaFZ3Y6mJAgJNb76G16gUbuVU;

    .line 120
    invoke-virtual {v1, v2}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    .line 121
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v1

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lio/github/hidroh/materialistic/accounts/-$$Lambda$8qfyghait5kJ2vURUpB46xAyu4g;

    invoke-direct {v2, p4}, Lio/github/hidroh/materialistic/accounts/-$$Lambda$8qfyghait5kJ2vURUpB46xAyu4g;-><init>(Lio/github/hidroh/materialistic/accounts/UserServices$Callback;)V

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lio/github/hidroh/materialistic/accounts/-$$Lambda$ftObPHatfvs0SdtAqv9yuyu0Xuk;

    invoke-direct {v3, p4}, Lio/github/hidroh/materialistic/accounts/-$$Lambda$ftObPHatfvs0SdtAqv9yuyu0Xuk;-><init>(Lio/github/hidroh/materialistic/accounts/UserServices$Callback;)V

    .line 122
    invoke-virtual {v1, v2, v3}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    .line 123
    return-void
.end method

.method public submit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLio/github/hidroh/materialistic/accounts/UserServices$Callback;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "isUrl"    # Z
    .param p5, "callback"    # Lio/github/hidroh/materialistic/accounts/UserServices$Callback;

    .line 127
    invoke-static {p1}, Lio/github/hidroh/materialistic/AppUtils;->getCredentials(Landroid/content/Context;)Landroidx/core/util/Pair;

    move-result-object v0

    .line 128
    .local v0, "credentials":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 129
    const/4 v1, 0x0

    invoke-virtual {p5, v1}, Lio/github/hidroh/materialistic/accounts/UserServices$Callback;->onDone(Z)V

    .line 130
    return-void

    .line 142
    :cond_0
    iget-object v1, v0, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lio/github/hidroh/materialistic/accounts/UserServicesClient;->postSubmitForm(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request;

    move-result-object v1

    invoke-direct {p0, v1}, Lio/github/hidroh/materialistic/accounts/UserServicesClient;->execute(Lokhttp3/Request;)Lrx/Observable;

    move-result-object v1

    sget-object v2, Lio/github/hidroh/materialistic/accounts/-$$Lambda$UserServicesClient$3tUT5ykDNz4ewSM9ZwZxpaqG854;->INSTANCE:Lio/github/hidroh/materialistic/accounts/-$$Lambda$UserServicesClient$3tUT5ykDNz4ewSM9ZwZxpaqG854;

    .line 143
    invoke-virtual {v1, v2}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    sget-object v2, Lio/github/hidroh/materialistic/accounts/-$$Lambda$UserServicesClient$7pNavyNGEFQhGKRjZoe1_iPZVk4;->INSTANCE:Lio/github/hidroh/materialistic/accounts/-$$Lambda$UserServicesClient$7pNavyNGEFQhGKRjZoe1_iPZVk4;

    .line 146
    invoke-virtual {v1, v2}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    new-instance v2, Lio/github/hidroh/materialistic/accounts/-$$Lambda$UserServicesClient$xsN-imMNfEOkOuiEKozKZ7pkcL4;

    invoke-direct {v2, p0}, Lio/github/hidroh/materialistic/accounts/-$$Lambda$UserServicesClient$xsN-imMNfEOkOuiEKozKZ7pkcL4;-><init>(Lio/github/hidroh/materialistic/accounts/UserServicesClient;)V

    .line 158
    invoke-virtual {v1, v2}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    sget-object v2, Lio/github/hidroh/materialistic/accounts/-$$Lambda$UserServicesClient$NE7ub0z-_Vj3FHeqv86vh4AYDhI;->INSTANCE:Lio/github/hidroh/materialistic/accounts/-$$Lambda$UserServicesClient$NE7ub0z-_Vj3FHeqv86vh4AYDhI;

    .line 162
    invoke-virtual {v1, v2}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    new-instance v2, Lio/github/hidroh/materialistic/accounts/-$$Lambda$UserServicesClient$9zDDHnUhf4Mdsw7bD0q2tWgYXLo;

    invoke-direct {v2, p0, p2, p3, p4}, Lio/github/hidroh/materialistic/accounts/-$$Lambda$UserServicesClient$9zDDHnUhf4Mdsw7bD0q2tWgYXLo;-><init>(Lio/github/hidroh/materialistic/accounts/UserServicesClient;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 165
    invoke-virtual {v1, v2}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    sget-object v2, Lio/github/hidroh/materialistic/accounts/-$$Lambda$UserServicesClient$AY3JyCeXe_6h5CTmi9OLR0QVfgQ;->INSTANCE:Lio/github/hidroh/materialistic/accounts/-$$Lambda$UserServicesClient$AY3JyCeXe_6h5CTmi9OLR0QVfgQ;

    .line 166
    invoke-virtual {v1, v2}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    new-instance v2, Lio/github/hidroh/materialistic/accounts/-$$Lambda$UserServicesClient$GAl71JgIvqI8Z1QmONNZb_FmoCk;

    invoke-direct {v2, p0}, Lio/github/hidroh/materialistic/accounts/-$$Lambda$UserServicesClient$GAl71JgIvqI8Z1QmONNZb_FmoCk;-><init>(Lio/github/hidroh/materialistic/accounts/UserServicesClient;)V

    .line 169
    invoke-virtual {v1, v2}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    .line 172
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v1

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lio/github/hidroh/materialistic/accounts/-$$Lambda$8qfyghait5kJ2vURUpB46xAyu4g;

    invoke-direct {v2, p5}, Lio/github/hidroh/materialistic/accounts/-$$Lambda$8qfyghait5kJ2vURUpB46xAyu4g;-><init>(Lio/github/hidroh/materialistic/accounts/UserServices$Callback;)V

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lio/github/hidroh/materialistic/accounts/-$$Lambda$ftObPHatfvs0SdtAqv9yuyu0Xuk;

    invoke-direct {v3, p5}, Lio/github/hidroh/materialistic/accounts/-$$Lambda$ftObPHatfvs0SdtAqv9yuyu0Xuk;-><init>(Lio/github/hidroh/materialistic/accounts/UserServices$Callback;)V

    .line 173
    invoke-virtual {v1, v2, v3}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    .line 174
    return-void
.end method

.method public voteUp(Landroid/content/Context;Ljava/lang/String;Lio/github/hidroh/materialistic/accounts/UserServices$Callback;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "itemId"    # Ljava/lang/String;
    .param p3, "callback"    # Lio/github/hidroh/materialistic/accounts/UserServices$Callback;

    .line 100
    invoke-static {p1}, Lio/github/hidroh/materialistic/AppUtils;->getCredentials(Landroid/content/Context;)Landroidx/core/util/Pair;

    move-result-object v0

    .line 101
    .local v0, "credentials":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 102
    return v1

    .line 104
    :cond_0
    const v2, 0x7f100151

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 105
    iget-object v1, v0, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v1, v2, p2}, Lio/github/hidroh/materialistic/accounts/UserServicesClient;->postVote(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request;

    move-result-object v1

    invoke-direct {p0, v1}, Lio/github/hidroh/materialistic/accounts/UserServicesClient;->execute(Lokhttp3/Request;)Lrx/Observable;

    move-result-object v1

    sget-object v2, Lio/github/hidroh/materialistic/accounts/-$$Lambda$UserServicesClient$sPs8lTJ7X_5D9-_skX31nGFB8JI;->INSTANCE:Lio/github/hidroh/materialistic/accounts/-$$Lambda$UserServicesClient$sPs8lTJ7X_5D9-_skX31nGFB8JI;

    .line 106
    invoke-virtual {v1, v2}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    .line 107
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lio/github/hidroh/materialistic/accounts/-$$Lambda$8qfyghait5kJ2vURUpB46xAyu4g;

    invoke-direct {v2, p3}, Lio/github/hidroh/materialistic/accounts/-$$Lambda$8qfyghait5kJ2vURUpB46xAyu4g;-><init>(Lio/github/hidroh/materialistic/accounts/UserServices$Callback;)V

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lio/github/hidroh/materialistic/accounts/-$$Lambda$ftObPHatfvs0SdtAqv9yuyu0Xuk;

    invoke-direct {v3, p3}, Lio/github/hidroh/materialistic/accounts/-$$Lambda$ftObPHatfvs0SdtAqv9yuyu0Xuk;-><init>(Lio/github/hidroh/materialistic/accounts/UserServices$Callback;)V

    .line 108
    invoke-virtual {v1, v2, v3}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    .line 109
    const/4 v1, 0x1

    return v1
.end method
