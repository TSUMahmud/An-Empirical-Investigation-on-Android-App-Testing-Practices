.class public Ldagger/internal/Binding$InvalidBindingException;
.super Ljava/lang/RuntimeException;
.source "Binding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldagger/internal/Binding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InvalidBindingException"
.end annotation


# instance fields
.field public final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "error"    # Ljava/lang/String;

    .line 159
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 160
    iput-object p1, p0, Ldagger/internal/Binding$InvalidBindingException;->type:Ljava/lang/String;

    .line 161
    return-void
.end method
