.class Lcom/baidu/location/b/j$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/b/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static a:Lcom/baidu/location/b/j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/baidu/location/b/j;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/baidu/location/b/j;-><init>(Lcom/baidu/location/b/j$1;)V

    sput-object v0, Lcom/baidu/location/b/j$a;->a:Lcom/baidu/location/b/j;

    return-void
.end method

.method static synthetic a()Lcom/baidu/location/b/j;
    .locals 1

    sget-object v0, Lcom/baidu/location/b/j$a;->a:Lcom/baidu/location/b/j;

    return-object v0
.end method
