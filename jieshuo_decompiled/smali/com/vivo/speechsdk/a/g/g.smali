.class public Lcom/vivo/speechsdk/a/g/g;
.super Lcom/vivo/speechsdk/a/g/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vivo/speechsdk/a/g/b;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(ILjava/lang/Object;II)V
    .locals 0

    check-cast p2, [B

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/vivo/speechsdk/a/g/g;->a(I[BII)V

    return-void
.end method

.method public a(I[BII)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0x68

    goto :goto_0

    :cond_1
    const/16 v0, 0x67

    :goto_0
    invoke-virtual {p0, v0}, Lcom/vivo/speechsdk/b/e/a;->b(I)V

    :goto_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/vivo/speechsdk/b/e/a;->b(ILjava/lang/Object;II)V

    return-void
.end method
