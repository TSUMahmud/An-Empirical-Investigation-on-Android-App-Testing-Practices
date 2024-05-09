.class Lio/github/hidroh/materialistic/data/HackerNewsItem;
.super Ljava/lang/Object;
.source "HackerNewsItem.java"

# interfaces
.implements Lio/github/hidroh/materialistic/data/Item;


# static fields
.field private static final AUTHOR_SEPARATOR:Ljava/lang/String; = " - "

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lio/github/hidroh/materialistic/data/HackerNewsItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private by:Ljava/lang/String;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private collapsed:Z

.field private contentExpanded:Z

.field private dead:Z
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private defaultColor:I

.field private deleted:Z
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private descendants:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private displayedAuthor:Landroid/text/Spannable;

.field private displayedText:Ljava/lang/CharSequence;

.field private displayedTime:Landroid/text/Spannable;

.field private favorite:Z

.field private hasNewDescendants:Z

.field private id:J
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private kidItems:[Lio/github/hidroh/materialistic/data/HackerNewsItem;

.field private kids:[J
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private lastKidCount:I

.field level:I

.field private localRevision:I

.field private next:J

.field private parent:J
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private parentItem:Lio/github/hidroh/materialistic/data/HackerNewsItem;

.field private parts:[J
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private pendingVoted:Z

.field private previous:J

.field rank:I

.field private score:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private text:Ljava/lang/String;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private time:J
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private url:Ljava/lang/String;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private viewed:Z

.field private voted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 100
    new-instance v0, Lio/github/hidroh/materialistic/data/HackerNewsItem$1;

    invoke-direct {v0}, Lio/github/hidroh/materialistic/data/HackerNewsItem$1;-><init>()V

    sput-object v0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(J)V
    .locals 2
    .param p1, "id"    # J

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->descendants:I

    .line 81
    iput v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->localRevision:I

    .line 82
    const/4 v1, 0x0

    iput v1, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->level:I

    .line 86
    iput v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->lastKidCount:I

    .line 87
    iput-boolean v1, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->hasNewDescendants:Z

    .line 113
    iput-wide p1, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->id:J

    .line 114
    return-void
.end method

.method private constructor <init>(JI)V
    .locals 0
    .param p1, "id"    # J
    .param p3, "level"    # I

    .line 117
    invoke-direct {p0, p1, p2}, Lio/github/hidroh/materialistic/data/HackerNewsItem;-><init>(J)V

    .line 118
    iput p3, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->level:I

    .line 119
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "source"    # Landroid/os/Parcel;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->descendants:I

    .line 81
    iput v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->localRevision:I

    .line 82
    const/4 v1, 0x0

    iput v1, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->level:I

    .line 86
    iput v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->lastKidCount:I

    .line 87
    iput-boolean v1, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->hasNewDescendants:Z

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->id:J

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->title:Ljava/lang/String;

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->time:J

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->by:Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->kids:[J

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->url:Ljava/lang/String;

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->text:Ljava/lang/String;

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->type:Ljava/lang/String;

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->favorite:Z

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->descendants:I

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->score:I

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->favorite:Z

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->viewed:Z

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->localRevision:I

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->level:I

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    iput-boolean v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->dead:Z

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    iput-boolean v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->deleted:Z

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_5

    const/4 v0, 0x1

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    :goto_5
    iput-boolean v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->collapsed:Z

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_6

    const/4 v0, 0x1

    goto :goto_6

    :cond_6
    const/4 v0, 0x0

    :goto_6
    iput-boolean v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->contentExpanded:Z

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->rank:I

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->lastKidCount:I

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_7

    const/4 v0, 0x1

    goto :goto_7

    :cond_7
    const/4 v0, 0x0

    :goto_7
    iput-boolean v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->hasNewDescendants:Z

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->parent:J

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_8

    const/4 v0, 0x1

    goto :goto_8

    :cond_8
    const/4 v0, 0x0

    :goto_8
    iput-boolean v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->voted:Z

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_9

    const/4 v1, 0x1

    :cond_9
    iput-boolean v1, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->pendingVoted:Z

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->next:J

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->previous:J

    .line 150
    return-void
.end method

.method private createAuthorSpannable(Z)Landroid/text/SpannableString;
    .locals 5
    .param p1, "authorLink"    # Z

    .line 344
    new-instance v0, Landroid/text/SpannableString;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->by:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 345
    .local v0, "bySpannable":Landroid/text/SpannableString;
    if-nez p1, :cond_0

    .line 346
    return-object v0

    .line 348
    :cond_0
    new-instance v1, Landroid/text/style/StyleSpan;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    const-string v2, " - "

    .line 349
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    .line 348
    const/16 v4, 0x11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 351
    new-instance v1, Lio/github/hidroh/materialistic/data/HackerNewsItem$2;

    invoke-direct {v1, p0}, Lio/github/hidroh/materialistic/data/HackerNewsItem$2;-><init>(Lio/github/hidroh/materialistic/data/HackerNewsItem;)V

    .line 364
    .local v1, "clickableSpan":Landroid/text/style/ClickableSpan;
    const-string v2, " - "

    .line 365
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    .line 364
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 367
    return-object v0
.end method

.method private getItemUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "itemId"    # Ljava/lang/String;

    .line 371
    const-string v0, "https://news.ycombinator.com/item?id=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clearPendingVoted()V
    .locals 1

    .line 519
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->pendingVoted:Z

    .line 520
    return-void
.end method

.method public describeContents()I
    .locals 1

    .line 201
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 570
    instance-of v0, p1, Lio/github/hidroh/materialistic/data/HackerNewsItem;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->id:J

    move-object v2, p1

    check-cast v2, Lio/github/hidroh/materialistic/data/HackerNewsItem;

    iget-wide v2, v2, Lio/github/hidroh/materialistic/data/HackerNewsItem;->id:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getBy()Ljava/lang/String;
    .locals 1

    .line 191
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->by:Ljava/lang/String;

    return-object v0
.end method

.method public getDescendants()I
    .locals 1

    .line 451
    iget v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->descendants:I

    return v0
.end method

.method public getDisplayedAuthor(Landroid/content/Context;ZI)Landroid/text/Spannable;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "linkify"    # Z
    .param p3, "color"    # I

    .line 271
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->displayedAuthor:Landroid/text/Spannable;

    if-nez v0, :cond_2

    .line 272
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->by:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    new-instance v0, Landroid/text/SpannableString;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->displayedAuthor:Landroid/text/Spannable;

    goto :goto_1

    .line 275
    :cond_0
    if-eqz p2, :cond_1

    const v0, 0x101009b

    goto :goto_0

    :cond_1
    const v0, 0x1010038

    :goto_0
    invoke-static {p1, v0}, Lio/github/hidroh/materialistic/AppUtils;->getThemedResId(Landroid/content/Context;I)I

    move-result v0

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->defaultColor:I

    .line 277
    invoke-direct {p0, p2}, Lio/github/hidroh/materialistic/data/HackerNewsItem;->createAuthorSpannable(Z)Landroid/text/SpannableString;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->displayedAuthor:Landroid/text/Spannable;

    .line 280
    :cond_2
    :goto_1
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->displayedAuthor:Landroid/text/Spannable;

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 281
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->displayedAuthor:Landroid/text/Spannable;

    return-object v0

    .line 283
    :cond_3
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->displayedAuthor:Landroid/text/Spannable;

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    if-eqz p3, :cond_4

    move v2, p3

    goto :goto_2

    :cond_4
    iget v2, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->defaultColor:I

    :goto_2
    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const-string v2, " - "

    .line 284
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->displayedAuthor:Landroid/text/Spannable;

    invoke-interface {v3}, Landroid/text/Spannable;->length()I

    move-result v3

    const/16 v4, 0x11

    .line 283
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 286
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->displayedAuthor:Landroid/text/Spannable;

    return-object v0
.end method

.method public getDisplayedText()Ljava/lang/CharSequence;
    .locals 1

    .line 410
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->displayedText:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 411
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->text:Ljava/lang/String;

    invoke-static {v0}, Lio/github/hidroh/materialistic/AppUtils;->fromHtml(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->displayedText:Ljava/lang/CharSequence;

    .line 413
    :cond_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->displayedText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getDisplayedTime(Landroid/content/Context;)Landroid/text/Spannable;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 291
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->displayedTime:Landroid/text/Spannable;

    if-nez v0, :cond_2

    .line 292
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-boolean v1, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->dead:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f100051

    .line 293
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 294
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    new-instance v1, Landroid/text/SpannableString;

    iget-wide v2, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->time:J

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    .line 295
    invoke-static {v2, v3}, Lio/github/hidroh/materialistic/AppUtils;->getAbbreviatedTimeSpan(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 296
    .local v1, "timeSpannable":Landroid/text/SpannableString;
    iget-boolean v2, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->deleted:Z

    if-eqz v2, :cond_1

    .line 297
    new-instance v2, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v2}, Landroid/text/style/StrikethroughSpan;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v4

    const/16 v5, 0x11

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 300
    :cond_1
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 301
    iput-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->displayedTime:Landroid/text/Spannable;

    .line 303
    .end local v0    # "builder":Landroid/text/SpannableStringBuilder;
    .end local v1    # "timeSpannable":Landroid/text/SpannableString;
    :cond_2
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->displayedTime:Landroid/text/Spannable;

    return-object v0
.end method

.method public getDisplayedTitle()Ljava/lang/String;
    .locals 3

    .line 252
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/data/HackerNewsItem;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x19bbd

    if-eq v1, v2, :cond_4

    const v2, 0x3497bf

    if-eq v1, v2, :cond_3

    const v2, 0x68af8f5

    if-eq v1, v2, :cond_2

    const v2, 0x38a5ee5f

    if-eq v1, v2, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v1, "comment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const-string v1, "story"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :cond_3
    const-string v1, "poll"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :cond_4
    const-string v1, "job"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_5

    .line 259
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->title:Ljava/lang/String;

    return-object v0

    .line 254
    :cond_5
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .line 237
    iget-wide v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->id:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKidCount()I
    .locals 1

    .line 308
    iget v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->descendants:I

    if-lez v0, :cond_0

    .line 309
    return v0

    .line 312
    :cond_0
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->kids:[J

    if-eqz v0, :cond_1

    array-length v0, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getKidItems()[Lio/github/hidroh/materialistic/data/HackerNewsItem;
    .locals 5

    .line 381
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->kids:[J

    if-eqz v0, :cond_4

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_1

    .line 385
    :cond_0
    iget-object v1, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->kidItems:[Lio/github/hidroh/materialistic/data/HackerNewsItem;

    if-nez v1, :cond_3

    .line 386
    array-length v0, v0

    new-array v0, v0, [Lio/github/hidroh/materialistic/data/HackerNewsItem;

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->kidItems:[Lio/github/hidroh/materialistic/data/HackerNewsItem;

    .line 387
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->kids:[J

    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 388
    new-instance v2, Lio/github/hidroh/materialistic/data/HackerNewsItem;

    aget-wide v3, v1, v0

    iget v1, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->level:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v2, v3, v4, v1}, Lio/github/hidroh/materialistic/data/HackerNewsItem;-><init>(JI)V

    move-object v1, v2

    .line 389
    .local v1, "item":Lio/github/hidroh/materialistic/data/HackerNewsItem;
    add-int/lit8 v2, v0, 0x1

    iput v2, v1, Lio/github/hidroh/materialistic/data/HackerNewsItem;->rank:I

    .line 390
    if-lez v0, :cond_1

    .line 391
    iget-object v2, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->kids:[J

    add-int/lit8 v3, v0, -0x1

    aget-wide v3, v2, v3

    iput-wide v3, v1, Lio/github/hidroh/materialistic/data/HackerNewsItem;->previous:J

    .line 393
    :cond_1
    iget-object v2, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->kids:[J

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_2

    .line 394
    add-int/lit8 v3, v0, 0x1

    aget-wide v3, v2, v3

    iput-wide v3, v1, Lio/github/hidroh/materialistic/data/HackerNewsItem;->next:J

    .line 396
    :cond_2
    iget-object v2, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->kidItems:[Lio/github/hidroh/materialistic/data/HackerNewsItem;

    aput-object v1, v2, v0

    .line 387
    .end local v1    # "item":Lio/github/hidroh/materialistic/data/HackerNewsItem;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 400
    .end local v0    # "i":I
    :cond_3
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->kidItems:[Lio/github/hidroh/materialistic/data/HackerNewsItem;

    return-object v0

    .line 382
    :cond_4
    :goto_1
    const/4 v0, 0x0

    new-array v0, v0, [Lio/github/hidroh/materialistic/data/HackerNewsItem;

    return-object v0
.end method

.method public bridge synthetic getKidItems()[Lio/github/hidroh/materialistic/data/Item;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/data/HackerNewsItem;->getKidItems()[Lio/github/hidroh/materialistic/data/HackerNewsItem;

    move-result-object v0

    return-object v0
.end method

.method public getKids()[J
    .locals 1

    .line 186
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->kids:[J

    return-object v0
.end method

.method public getLastKidCount()I
    .locals 1

    .line 317
    iget v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->lastKidCount:I

    return v0
.end method

.method public getLevel()I
    .locals 1

    .line 466
    iget v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->level:I

    return v0
.end method

.method public getLocalRevision()I
    .locals 1

    .line 441
    iget v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->localRevision:I

    return v0
.end method

.method public getLongId()J
    .locals 2

    .line 242
    iget-wide v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->id:J

    return-wide v0
.end method

.method public getNeighbour(I)J
    .locals 4
    .param p1, "direction"    # I

    .line 549
    const-wide/16 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 559
    return-wide v0

    .line 557
    :pswitch_0
    iget-object v2, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->kids:[J

    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    const/4 v0, 0x0

    aget-wide v0, v2, v0

    :cond_0
    return-wide v0

    .line 555
    :pswitch_1
    iget v2, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->level:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    iget-wide v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->parent:J

    :cond_1
    return-wide v0

    .line 553
    :pswitch_2
    iget-wide v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->next:J

    return-wide v0

    .line 551
    :pswitch_3
    iget-wide v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->previous:J

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getParent()Ljava/lang/String;
    .locals 2

    .line 471
    iget-wide v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->parent:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParentItem()Lio/github/hidroh/materialistic/data/Item;
    .locals 5

    .line 476
    iget-wide v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->parent:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 477
    const/4 v0, 0x0

    return-object v0

    .line 479
    :cond_0
    iget-object v2, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->parentItem:Lio/github/hidroh/materialistic/data/HackerNewsItem;

    if-nez v2, :cond_1

    .line 480
    new-instance v2, Lio/github/hidroh/materialistic/data/HackerNewsItem;

    invoke-direct {v2, v0, v1}, Lio/github/hidroh/materialistic/data/HackerNewsItem;-><init>(J)V

    iput-object v2, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->parentItem:Lio/github/hidroh/materialistic/data/HackerNewsItem;

    .line 482
    :cond_1
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->parentItem:Lio/github/hidroh/materialistic/data/HackerNewsItem;

    return-object v0
.end method

.method public getRank()I
    .locals 1

    .line 534
    iget v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->rank:I

    return v0
.end method

.method public getRawType()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getRawUrl()Ljava/lang/String;
    .locals 1

    .line 181
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getScore()I
    .locals 1

    .line 497
    iget v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->score:I

    return v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 376
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/data/HackerNewsItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/data/HackerNewsItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 405
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .line 196
    iget-wide v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->time:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 247
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 266
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->type:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->type:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "story"

    :goto_0
    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 3

    .line 332
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/data/HackerNewsItem;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x19bbd

    if-eq v1, v2, :cond_3

    const v2, 0x3497bf

    if-eq v1, v2, :cond_2

    const v2, 0x38a5ee5f

    if-eq v1, v2, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v1, "comment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    const-string v1, "poll"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const-string v1, "job"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 338
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lio/github/hidroh/materialistic/data/HackerNewsItem;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/github/hidroh/materialistic/data/HackerNewsItem;->getItemUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 336
    :pswitch_0
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/data/HackerNewsItem;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/github/hidroh/materialistic/data/HackerNewsItem;->getItemUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 338
    :cond_4
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->url:Ljava/lang/String;

    :goto_2
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public hasNewKids()Z
    .locals 1

    .line 327
    iget-boolean v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->hasNewDescendants:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 565
    iget-wide v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->id:J

    long-to-int v1, v0

    return v1
.end method

.method public incrementScore()V
    .locals 2

    .line 502
    iget v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->score:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->score:I

    .line 503
    iput-boolean v1, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->voted:Z

    .line 504
    iput-boolean v1, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->pendingVoted:Z

    .line 505
    return-void
.end method

.method public isCollapsed()Z
    .locals 1

    .line 524
    iget-boolean v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->collapsed:Z

    return v0
.end method

.method public isContentExpanded()Z
    .locals 1

    .line 539
    iget-boolean v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->contentExpanded:Z

    return v0
.end method

.method public isDead()Z
    .locals 1

    .line 492
    iget-boolean v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->dead:Z

    return v0
.end method

.method public isDeleted()Z
    .locals 1

    .line 487
    iget-boolean v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->deleted:Z

    return v0
.end method

.method public isFavorite()Z
    .locals 1

    .line 431
    iget-boolean v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->favorite:Z

    return v0
.end method

.method public isPendingVoted()Z
    .locals 1

    .line 514
    iget-boolean v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->pendingVoted:Z

    return v0
.end method

.method public isStoryType()Z
    .locals 5

    .line 418
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/data/HackerNewsItem;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x19bbd

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_4

    const v2, 0x3497bf

    if-eq v1, v2, :cond_3

    const v2, 0x68af8f5

    if-eq v1, v2, :cond_2

    const v2, 0x38a5ee5f

    if-eq v1, v2, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v1, "comment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :cond_2
    const-string v1, "story"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const-string v1, "poll"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const-string v1, "job"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 425
    return v4

    .line 422
    :pswitch_0
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isViewed()Z
    .locals 1

    .line 456
    iget-boolean v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->viewed:Z

    return v0
.end method

.method public isVoted()Z
    .locals 1

    .line 509
    iget-boolean v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->voted:Z

    return v0
.end method

.method public populate(Lio/github/hidroh/materialistic/data/Item;)V
    .locals 4
    .param p1, "info"    # Lio/github/hidroh/materialistic/data/Item;

    .line 154
    invoke-interface {p1}, Lio/github/hidroh/materialistic/data/Item;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->title:Ljava/lang/String;

    .line 155
    invoke-interface {p1}, Lio/github/hidroh/materialistic/data/Item;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->time:J

    .line 156
    invoke-interface {p1}, Lio/github/hidroh/materialistic/data/Item;->getBy()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->by:Ljava/lang/String;

    .line 157
    invoke-interface {p1}, Lio/github/hidroh/materialistic/data/Item;->getKids()[J

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->kids:[J

    .line 158
    invoke-interface {p1}, Lio/github/hidroh/materialistic/data/Item;->getRawUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->url:Ljava/lang/String;

    .line 159
    invoke-interface {p1}, Lio/github/hidroh/materialistic/data/Item;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->text:Ljava/lang/String;

    .line 160
    invoke-interface {p1}, Lio/github/hidroh/materialistic/data/Item;->getDisplayedText()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->displayedText:Ljava/lang/CharSequence;

    .line 161
    invoke-interface {p1}, Lio/github/hidroh/materialistic/data/Item;->getRawType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->type:Ljava/lang/String;

    .line 162
    invoke-interface {p1}, Lio/github/hidroh/materialistic/data/Item;->getDescendants()I

    move-result v0

    iput v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->descendants:I

    .line 163
    iget v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->lastKidCount:I

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    iget v2, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->descendants:I

    if-le v2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->hasNewDescendants:Z

    .line 164
    iget v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->descendants:I

    iput v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->lastKidCount:I

    .line 165
    invoke-interface {p1}, Lio/github/hidroh/materialistic/data/Item;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->parent:J

    .line 166
    invoke-interface {p1}, Lio/github/hidroh/materialistic/data/Item;->isDeleted()Z

    move-result v0

    iput-boolean v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->deleted:Z

    .line 167
    invoke-interface {p1}, Lio/github/hidroh/materialistic/data/Item;->isDead()Z

    move-result v0

    iput-boolean v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->dead:Z

    .line 168
    invoke-interface {p1}, Lio/github/hidroh/materialistic/data/Item;->getScore()I

    move-result v0

    iput v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->score:I

    .line 169
    invoke-interface {p1}, Lio/github/hidroh/materialistic/data/Item;->isViewed()Z

    move-result v0

    iput-boolean v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->viewed:Z

    .line 170
    invoke-interface {p1}, Lio/github/hidroh/materialistic/data/WebItem;->isFavorite()Z

    move-result v0

    iput-boolean v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->favorite:Z

    .line 171
    iput v1, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->localRevision:I

    .line 172
    return-void
.end method

.method preload()V
    .locals 0

    .line 574
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/data/HackerNewsItem;->getDisplayedText()Ljava/lang/CharSequence;

    .line 575
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/data/HackerNewsItem;->getKidItems()[Lio/github/hidroh/materialistic/data/HackerNewsItem;

    .line 576
    return-void
.end method

.method public setCollapsed(Z)V
    .locals 0
    .param p1, "collapsed"    # Z

    .line 529
    iput-boolean p1, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->collapsed:Z

    .line 530
    return-void
.end method

.method public setContentExpanded(Z)V
    .locals 0
    .param p1, "expanded"    # Z

    .line 544
    iput-boolean p1, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->contentExpanded:Z

    .line 545
    return-void
.end method

.method public setFavorite(Z)V
    .locals 0
    .param p1, "favorite"    # Z

    .line 436
    iput-boolean p1, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->favorite:Z

    .line 437
    return-void
.end method

.method public setIsViewed(Z)V
    .locals 0
    .param p1, "isViewed"    # Z

    .line 461
    iput-boolean p1, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->viewed:Z

    .line 462
    return-void
.end method

.method public setLastKidCount(I)V
    .locals 0
    .param p1, "lastKidCount"    # I

    .line 322
    iput p1, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->lastKidCount:I

    .line 323
    return-void
.end method

.method public setLocalRevision(I)V
    .locals 0
    .param p1, "localRevision"    # I

    .line 446
    iput p1, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->localRevision:I

    .line 447
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 206
    iget-wide v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 207
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 208
    iget-wide v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 209
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->by:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->kids:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 211
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 214
    iget-boolean v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->favorite:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    iget v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->descendants:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    iget v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->score:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    iget-boolean v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->favorite:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    iget-boolean v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->viewed:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    iget v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->localRevision:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    iget v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->level:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    iget-boolean v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->dead:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    iget-boolean v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->deleted:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    iget-boolean v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->collapsed:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 224
    iget-boolean v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->contentExpanded:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 225
    iget v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->rank:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    iget v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->lastKidCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 227
    iget-boolean v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->hasNewDescendants:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 228
    iget-wide v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->parent:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 229
    iget-boolean v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->voted:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    iget-boolean v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->pendingVoted:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    iget-wide v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->next:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 232
    iget-wide v0, p0, Lio/github/hidroh/materialistic/data/HackerNewsItem;->previous:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 233
    return-void
.end method
