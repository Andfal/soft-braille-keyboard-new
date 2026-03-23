.class public Lcom/vivo/speechsdk/b/h/i$a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/speechsdk/b/h/i$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    iput v0, p0, Lcom/vivo/speechsdk/b/h/i$a$a;->a:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/vivo/speechsdk/b/h/i$a$a;->b:I

    return-void
.end method


# virtual methods
.method public a(I)Lcom/vivo/speechsdk/b/h/i$a$a;
    .locals 0

    iput p1, p0, Lcom/vivo/speechsdk/b/h/i$a$a;->a:I

    return-object p0
.end method

.method public a()Lcom/vivo/speechsdk/b/h/i$a;
    .locals 4

    new-instance v0, Lcom/vivo/speechsdk/b/h/i$a;

    iget v1, p0, Lcom/vivo/speechsdk/b/h/i$a$a;->c:I

    iget v2, p0, Lcom/vivo/speechsdk/b/h/i$a$a;->a:I

    iget v3, p0, Lcom/vivo/speechsdk/b/h/i$a$a;->b:I

    invoke-direct {v0, v1, v2, v3}, Lcom/vivo/speechsdk/b/h/i$a;-><init>(III)V

    return-object v0
.end method

.method public b(I)Lcom/vivo/speechsdk/b/h/i$a$a;
    .locals 0

    iput p1, p0, Lcom/vivo/speechsdk/b/h/i$a$a;->b:I

    return-object p0
.end method

.method public c(I)Lcom/vivo/speechsdk/b/h/i$a$a;
    .locals 0

    iput p1, p0, Lcom/vivo/speechsdk/b/h/i$a$a;->c:I

    return-object p0
.end method
