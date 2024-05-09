.class public final enum Lrx/internal/util/InternalObservableUtils;
.super Ljava/lang/Enum;
.source "InternalObservableUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/util/InternalObservableUtils$ErrorNotImplementedAction;,
        Lrx/internal/util/InternalObservableUtils$NotificationErrorExtractor;,
        Lrx/internal/util/InternalObservableUtils$ReturnsVoidFunc1;,
        Lrx/internal/util/InternalObservableUtils$ToArrayFunc1;,
        Lrx/internal/util/InternalObservableUtils$ObjectEqualsFunc2;,
        Lrx/internal/util/InternalObservableUtils$PlusOneLongFunc2;,
        Lrx/internal/util/InternalObservableUtils$PlusOneFunc2;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lrx/internal/util/InternalObservableUtils;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lrx/internal/util/InternalObservableUtils;

.field public static final COUNTER:Lrx/internal/util/InternalObservableUtils$PlusOneFunc2;

.field static final ERROR_EXTRACTOR:Lrx/internal/util/InternalObservableUtils$NotificationErrorExtractor;

.field public static final ERROR_NOT_IMPLEMENTED:Lrx/functions/Action1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Action1<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public static final IS_EMPTY:Lrx/Observable$Operator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable$Operator<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final LONG_COUNTER:Lrx/internal/util/InternalObservableUtils$PlusOneLongFunc2;

.field public static final OBJECT_EQUALS:Lrx/internal/util/InternalObservableUtils$ObjectEqualsFunc2;

.field static final RETURNS_VOID:Lrx/internal/util/InternalObservableUtils$ReturnsVoidFunc1;

.field public static final TO_ARRAY:Lrx/internal/util/InternalObservableUtils$ToArrayFunc1;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 33
    const/4 v0, 0x0

    new-array v0, v0, [Lrx/internal/util/InternalObservableUtils;

    sput-object v0, Lrx/internal/util/InternalObservableUtils;->$VALUES:[Lrx/internal/util/InternalObservableUtils;

    .line 38
    new-instance v0, Lrx/internal/util/InternalObservableUtils$PlusOneLongFunc2;

    invoke-direct {v0}, Lrx/internal/util/InternalObservableUtils$PlusOneLongFunc2;-><init>()V

    sput-object v0, Lrx/internal/util/InternalObservableUtils;->LONG_COUNTER:Lrx/internal/util/InternalObservableUtils$PlusOneLongFunc2;

    .line 43
    new-instance v0, Lrx/internal/util/InternalObservableUtils$ObjectEqualsFunc2;

    invoke-direct {v0}, Lrx/internal/util/InternalObservableUtils$ObjectEqualsFunc2;-><init>()V

    sput-object v0, Lrx/internal/util/InternalObservableUtils;->OBJECT_EQUALS:Lrx/internal/util/InternalObservableUtils$ObjectEqualsFunc2;

    .line 47
    new-instance v0, Lrx/internal/util/InternalObservableUtils$ToArrayFunc1;

    invoke-direct {v0}, Lrx/internal/util/InternalObservableUtils$ToArrayFunc1;-><init>()V

    sput-object v0, Lrx/internal/util/InternalObservableUtils;->TO_ARRAY:Lrx/internal/util/InternalObservableUtils$ToArrayFunc1;

    .line 49
    new-instance v0, Lrx/internal/util/InternalObservableUtils$ReturnsVoidFunc1;

    invoke-direct {v0}, Lrx/internal/util/InternalObservableUtils$ReturnsVoidFunc1;-><init>()V

    sput-object v0, Lrx/internal/util/InternalObservableUtils;->RETURNS_VOID:Lrx/internal/util/InternalObservableUtils$ReturnsVoidFunc1;

    .line 54
    new-instance v0, Lrx/internal/util/InternalObservableUtils$PlusOneFunc2;

    invoke-direct {v0}, Lrx/internal/util/InternalObservableUtils$PlusOneFunc2;-><init>()V

    sput-object v0, Lrx/internal/util/InternalObservableUtils;->COUNTER:Lrx/internal/util/InternalObservableUtils$PlusOneFunc2;

    .line 56
    new-instance v0, Lrx/internal/util/InternalObservableUtils$NotificationErrorExtractor;

    invoke-direct {v0}, Lrx/internal/util/InternalObservableUtils$NotificationErrorExtractor;-><init>()V

    sput-object v0, Lrx/internal/util/InternalObservableUtils;->ERROR_EXTRACTOR:Lrx/internal/util/InternalObservableUtils$NotificationErrorExtractor;

    .line 61
    new-instance v0, Lrx/internal/util/InternalObservableUtils$ErrorNotImplementedAction;

    invoke-direct {v0}, Lrx/internal/util/InternalObservableUtils$ErrorNotImplementedAction;-><init>()V

    sput-object v0, Lrx/internal/util/InternalObservableUtils;->ERROR_NOT_IMPLEMENTED:Lrx/functions/Action1;

    .line 63
    new-instance v0, Lrx/internal/operators/OperatorAny;

    invoke-static {}, Lrx/internal/util/UtilityFunctions;->alwaysTrue()Lrx/functions/Func1;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lrx/internal/operators/OperatorAny;-><init>(Lrx/functions/Func1;Z)V

    sput-object v0, Lrx/internal/util/InternalObservableUtils;->IS_EMPTY:Lrx/Observable$Operator;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lrx/internal/util/InternalObservableUtils;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 33
    const-class v0, Lrx/internal/util/InternalObservableUtils;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lrx/internal/util/InternalObservableUtils;

    return-object v0
.end method

.method public static values()[Lrx/internal/util/InternalObservableUtils;
    .locals 1

    .line 33
    sget-object v0, Lrx/internal/util/InternalObservableUtils;->$VALUES:[Lrx/internal/util/InternalObservableUtils;

    invoke-virtual {v0}, [Lrx/internal/util/InternalObservableUtils;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/internal/util/InternalObservableUtils;

    return-object v0
.end method
