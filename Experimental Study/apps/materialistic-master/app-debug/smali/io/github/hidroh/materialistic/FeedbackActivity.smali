.class public Lio/github/hidroh/materialistic/FeedbackActivity;
.super Lio/github/hidroh/materialistic/InjectableActivity;
.source "FeedbackActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/hidroh/materialistic/FeedbackActivity$FeedbackCallback;
    }
.end annotation


# instance fields
.field mFeedbackClient:Lio/github/hidroh/materialistic/data/FeedbackClient;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lio/github/hidroh/materialistic/InjectableActivity;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onCreate$0(Lio/github/hidroh/materialistic/FeedbackActivity;Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 53
    invoke-static {p0}, Lio/github/hidroh/materialistic/AppUtils;->openPlayStore(Landroid/content/Context;)V

    .line 54
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 55
    return-void
.end method

.method public static synthetic lambda$onCreate$1(Lio/github/hidroh/materialistic/FeedbackActivity;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/view/View;Landroid/view/View;)V
    .locals 4
    .param p1, "titleLayout"    # Lcom/google/android/material/textfield/TextInputLayout;
    .param p2, "bodyLayout"    # Lcom/google/android/material/textfield/TextInputLayout;
    .param p3, "title"    # Landroid/widget/EditText;
    .param p4, "body"    # Landroid/widget/EditText;
    .param p5, "sendButton"    # Landroid/view/View;
    .param p6, "v"    # Landroid/view/View;

    .line 57
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 58
    invoke-virtual {p2, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 59
    invoke-virtual {p3}, Landroid/widget/EditText;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 60
    const v1, 0x7f100186

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 62
    :cond_0
    invoke-virtual {p4}, Landroid/widget/EditText;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 63
    const v1, 0x7f100045

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 65
    :cond_1
    invoke-virtual {p3}, Landroid/widget/EditText;->length()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p4}, Landroid/widget/EditText;->length()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 68
    :cond_2
    invoke-virtual {p5, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 69
    iget-object v0, p0, Lio/github/hidroh/materialistic/FeedbackActivity;->mFeedbackClient:Lio/github/hidroh/materialistic/data/FeedbackClient;

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lio/github/hidroh/materialistic/FeedbackActivity$FeedbackCallback;

    invoke-direct {v3, p0}, Lio/github/hidroh/materialistic/FeedbackActivity$FeedbackCallback;-><init>(Lio/github/hidroh/materialistic/FeedbackActivity;)V

    invoke-interface {v0, v1, v2, v3}, Lio/github/hidroh/materialistic/data/FeedbackClient;->send(Ljava/lang/String;Ljava/lang/String;Lio/github/hidroh/materialistic/data/FeedbackClient$Callback;)V

    .line 71
    return-void

    .line 66
    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method protected isDialogTheme()Z
    .locals 1

    .line 76
    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 40
    invoke-super {p0, p1}, Lio/github/hidroh/materialistic/InjectableActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->supportRequestWindowFeature(I)Z

    .line 42
    const v0, 0x7f0c001f

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 43
    const v0, 0x7f09007c

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 44
    const v1, 0x7f100066

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/github/hidroh/materialistic/AppUtils;->fromHtml(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 43
    invoke-static {v0, v1}, Lio/github/hidroh/materialistic/AppUtils;->setTextWithLinks(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 45
    nop

    .line 46
    const v0, 0x7f090131

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 47
    .local v0, "titleLayout":Lcom/google/android/material/textfield/TextInputLayout;
    nop

    .line 48
    const v1, 0x7f09012b

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/google/android/material/textfield/TextInputLayout;

    .line 49
    .local v8, "bodyLayout":Lcom/google/android/material/textfield/TextInputLayout;
    const v1, 0x7f090070

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/EditText;

    .line 50
    .local v9, "title":Landroid/widget/EditText;
    const v1, 0x7f09006d

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/EditText;

    .line 51
    .local v10, "body":Landroid/widget/EditText;
    const v1, 0x7f09007b

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 52
    .local v11, "sendButton":Landroid/view/View;
    const v1, 0x7f090037

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lio/github/hidroh/materialistic/-$$Lambda$FeedbackActivity$ldRezBN7wX2-idzxQLdPexJ1eOY;

    invoke-direct {v2, p0}, Lio/github/hidroh/materialistic/-$$Lambda$FeedbackActivity$ldRezBN7wX2-idzxQLdPexJ1eOY;-><init>(Lio/github/hidroh/materialistic/FeedbackActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    new-instance v12, Lio/github/hidroh/materialistic/-$$Lambda$FeedbackActivity$1lbxVCw8HsHqAirQUWEBvdmCljQ;

    move-object v1, v12

    move-object v2, p0

    move-object v3, v0

    move-object v4, v8

    move-object v5, v9

    move-object v6, v10

    move-object v7, v11

    invoke-direct/range {v1 .. v7}, Lio/github/hidroh/materialistic/-$$Lambda$FeedbackActivity$1lbxVCw8HsHqAirQUWEBvdmCljQ;-><init>(Lio/github/hidroh/materialistic/FeedbackActivity;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/view/View;)V

    invoke-virtual {v11, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    return-void
.end method

.method onFeedbackSent(Z)V
    .locals 2
    .param p1, "success"    # Z

    .line 81
    if-eqz p1, :cond_0

    const v0, 0x7f100067

    goto :goto_0

    :cond_0
    const v0, 0x7f100065

    :goto_0
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 85
    if-eqz p1, :cond_1

    .line 86
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 89
    :cond_1
    const v0, 0x7f09007b

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 91
    :goto_1
    return-void
.end method
