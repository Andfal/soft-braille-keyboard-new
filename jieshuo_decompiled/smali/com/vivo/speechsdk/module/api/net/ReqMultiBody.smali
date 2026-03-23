.class public Lcom/vivo/speechsdk/module/api/net/ReqMultiBody;
.super Lcom/vivo/speechsdk/module/api/net/ReqBody;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/module/api/net/ReqBody;-><init>(Ljava/lang/String;)V

    iput-wide p2, p0, Lcom/vivo/speechsdk/module/api/net/ReqMultiBody;->a:J

    iput-object p4, p0, Lcom/vivo/speechsdk/module/api/net/ReqMultiBody;->b:Ljava/lang/String;

    iput p5, p0, Lcom/vivo/speechsdk/module/api/net/ReqMultiBody;->c:I

    iput p6, p0, Lcom/vivo/speechsdk/module/api/net/ReqMultiBody;->d:I

    iput-object p7, p0, Lcom/vivo/speechsdk/module/api/net/ReqMultiBody;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBlockSize()I
    .locals 1

    iget v0, p0, Lcom/vivo/speechsdk/module/api/net/ReqMultiBody;->d:I

    return v0
.end method

.method public getFileLength()J
    .locals 2

    iget-wide v0, p0, Lcom/vivo/speechsdk/module/api/net/ReqMultiBody;->a:J

    return-wide v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/api/net/ReqMultiBody;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getOffest()I
    .locals 1

    iget v0, p0, Lcom/vivo/speechsdk/module/api/net/ReqMultiBody;->c:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/api/net/ReqMultiBody;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setBlockSize(I)V
    .locals 0

    iput p1, p0, Lcom/vivo/speechsdk/module/api/net/ReqMultiBody;->d:I

    return-void
.end method

.method public setFileLength(J)V
    .locals 0

    iput-wide p1, p0, Lcom/vivo/speechsdk/module/api/net/ReqMultiBody;->a:J

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/api/net/ReqMultiBody;->e:Ljava/lang/String;

    return-void
.end method

.method public setOffest(I)V
    .locals 0

    iput p1, p0, Lcom/vivo/speechsdk/module/api/net/ReqMultiBody;->c:I

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/api/net/ReqMultiBody;->b:Ljava/lang/String;

    return-void
.end method
