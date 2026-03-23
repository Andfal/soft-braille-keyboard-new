.class final Lcom/baidu/location/b/k$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/b/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# static fields
.field private static final a:Lcom/baidu/location/b/k;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/baidu/location/b/k;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/baidu/location/b/k;-><init>(Lcom/baidu/location/b/k$1;)V

    sput-object v0, Lcom/baidu/location/b/k$c;->a:Lcom/baidu/location/b/k;

    return-void
.end method

.method static synthetic a()Lcom/baidu/location/b/k;
    .locals 1

    sget-object v0, Lcom/baidu/location/b/k$c;->a:Lcom/baidu/location/b/k;

    return-object v0
.end method
