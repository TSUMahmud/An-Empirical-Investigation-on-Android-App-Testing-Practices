.class public Landroidx/core/text/PrecomputedTextCompat;
.super Ljava/lang/Object;
.source "PrecomputedTextCompat.java"

# interfaces
.implements Landroid/text/Spannable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/text/PrecomputedTextCompat$Params;
    }
.end annotation


# static fields
.field private static sExecutor:Ljava/util/concurrent/Executor;

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private final mParams:Landroidx/core/text/PrecomputedTextCompat$Params;

.field private final mText:Landroid/text/Spannable;

.field private final mWrapped:Landroid/text/PrecomputedText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/core/text/PrecomputedTextCompat;->sLock:Ljava/lang/Object;

    .line 73
    const/4 v0, 0x0

    sput-object v0, Landroidx/core/text/PrecomputedTextCompat;->sExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public charAt(I)C
    .locals 1
    .param p1, "index"    # I

    .line 747
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat;->mText:Landroid/text/Spannable;

    invoke-interface {v0, p1}, Landroid/text/Spannable;->charAt(I)C

    move-result v0

    return v0
.end method

.method public getParams()Landroidx/core/text/PrecomputedTextCompat$Params;
    .locals 1

    .line 510
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat;->mParams:Landroidx/core/text/PrecomputedTextCompat$Params;

    return-object v0
.end method

.method public getPrecomputedText()Landroid/text/PrecomputedText;
    .locals 2

    .line 499
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat;->mText:Landroid/text/Spannable;

    instance-of v1, v0, Landroid/text/PrecomputedText;

    if-eqz v1, :cond_0

    .line 500
    check-cast v0, Landroid/text/PrecomputedText;

    return-object v0

    .line 502
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSpanEnd(Ljava/lang/Object;)I
    .locals 1
    .param p1, "tag"    # Ljava/lang/Object;

    .line 722
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat;->mText:Landroid/text/Spannable;

    invoke-interface {v0, p1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getSpanFlags(Ljava/lang/Object;)I
    .locals 1
    .param p1, "tag"    # Ljava/lang/Object;

    .line 727
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat;->mText:Landroid/text/Spannable;

    invoke-interface {v0, p1}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getSpanStart(Ljava/lang/Object;)I
    .locals 1
    .param p1, "tag"    # Ljava/lang/Object;

    .line 717
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat;->mText:Landroid/text/Spannable;

    invoke-interface {v0, p1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 707
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 708
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat;->mWrapped:Landroid/text/PrecomputedText;

    invoke-virtual {v0, p1, p2, p3}, Landroid/text/PrecomputedText;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 710
    :cond_0
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat;->mText:Landroid/text/Spannable;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .locals 1

    .line 742
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat;->mText:Landroid/text/Spannable;

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v0

    return v0
.end method

.method public nextSpanTransition(IILjava/lang/Class;)I
    .locals 1
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "type"    # Ljava/lang/Class;

    .line 732
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat;->mText:Landroid/text/Spannable;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/Spannable;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v0

    return v0
.end method

.method public removeSpan(Ljava/lang/Object;)V
    .locals 2
    .param p1, "what"    # Ljava/lang/Object;

    .line 689
    instance-of v0, p1, Landroid/text/style/MetricAffectingSpan;

    if-nez v0, :cond_1

    .line 693
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 694
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat;->mWrapped:Landroid/text/PrecomputedText;

    invoke-virtual {v0, p1}, Landroid/text/PrecomputedText;->removeSpan(Ljava/lang/Object;)V

    goto :goto_0

    .line 696
    :cond_0
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat;->mText:Landroid/text/Spannable;

    invoke-interface {v0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 698
    :goto_0
    return-void

    .line 690
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MetricAffectingSpan can not be removed from PrecomputedText."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSpan(Ljava/lang/Object;III)V
    .locals 2
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "flags"    # I

    .line 673
    instance-of v0, p1, Landroid/text/style/MetricAffectingSpan;

    if-nez v0, :cond_1

    .line 677
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 678
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat;->mWrapped:Landroid/text/PrecomputedText;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/text/PrecomputedText;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 680
    :cond_0
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat;->mText:Landroid/text/Spannable;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 682
    :goto_0
    return-void

    .line 674
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MetricAffectingSpan can not be set to PrecomputedText."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 752
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat;->mText:Landroid/text/Spannable;

    invoke-interface {v0, p1, p2}, Landroid/text/Spannable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 757
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat;->mText:Landroid/text/Spannable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
