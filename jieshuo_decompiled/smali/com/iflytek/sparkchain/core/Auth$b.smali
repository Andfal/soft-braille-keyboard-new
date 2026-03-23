.class Lcom/iflytek/sparkchain/core/Auth$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/sparkchain/core/Auth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static a:Lcom/iflytek/sparkchain/core/Auth;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iflytek/sparkchain/core/Auth;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iflytek/sparkchain/core/Auth;-><init>(Lcom/iflytek/sparkchain/core/Auth$a;)V

    sput-object v0, Lcom/iflytek/sparkchain/core/Auth$b;->a:Lcom/iflytek/sparkchain/core/Auth;

    return-void
.end method

.method static synthetic a()Lcom/iflytek/sparkchain/core/Auth;
    .locals 1

    sget-object v0, Lcom/iflytek/sparkchain/core/Auth$b;->a:Lcom/iflytek/sparkchain/core/Auth;

    return-object v0
.end method
