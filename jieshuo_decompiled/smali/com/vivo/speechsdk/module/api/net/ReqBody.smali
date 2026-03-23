.class public Lcom/vivo/speechsdk/module/api/net/ReqBody;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mContent:Ljava/lang/String;

.field public mContentByte:[B

.field public mContentFile:Ljava/io/File;

.field public mContentType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vivo/speechsdk/module/api/net/ReqBody;->mContentType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vivo/speechsdk/module/api/net/ReqBody;->mContentType:Ljava/lang/String;

    iput-object p2, p0, Lcom/vivo/speechsdk/module/api/net/ReqBody;->mContentFile:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vivo/speechsdk/module/api/net/ReqBody;->mContentType:Ljava/lang/String;

    iput-object p2, p0, Lcom/vivo/speechsdk/module/api/net/ReqBody;->mContent:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vivo/speechsdk/module/api/net/ReqBody;->mContentType:Ljava/lang/String;

    iput-object p2, p0, Lcom/vivo/speechsdk/module/api/net/ReqBody;->mContentByte:[B

    return-void
.end method
