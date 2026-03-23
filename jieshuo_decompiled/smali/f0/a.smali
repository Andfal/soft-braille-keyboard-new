.class public Lf0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/net/Proxy;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lf0/a;->a:I

    iput v0, p0, Lf0/a;->b:I

    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    iput-object v0, p0, Lf0/a;->c:Ljava/net/Proxy;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lf0/a;->a:I

    return v0
.end method

.method public b()Ljava/net/Proxy;
    .locals 1

    iget-object v0, p0, Lf0/a;->c:Ljava/net/Proxy;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lf0/a;->b:I

    return v0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lf0/a;->a:I

    return-void
.end method

.method public e(I)V
    .locals 0

    iput p1, p0, Lf0/a;->b:I

    return-void
.end method
