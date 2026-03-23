.class Lcom/baidu/location/e/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/e/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:D

.field b:D

.field final synthetic c:Lcom/baidu/location/e/d;


# direct methods
.method constructor <init>(Lcom/baidu/location/e/d;DD)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/e/d$a;->c:Lcom/baidu/location/e/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/baidu/location/e/d$a;->a:D

    iput-wide p4, p0, Lcom/baidu/location/e/d$a;->b:D

    return-void
.end method
