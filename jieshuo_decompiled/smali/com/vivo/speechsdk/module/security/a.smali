.class public Lcom/vivo/speechsdk/module/security/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/module/api/security/ISignTool;


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    const/16 v3, 0x3e

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    const-string v4, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public generateSignature(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 0

    invoke-static {p1, p2}, Lcom/vivo/speechsdk/module/security/Sign;->generateSignature(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public hash(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/vivo/speechsdk/module/security/Sign;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/vivo/speechsdk/module/security/Sign;->hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public nonce(I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/module/security/a;->a(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public sign([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/vivo/speechsdk/module/security/a;->sign([Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public sign([Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/vivo/speechsdk/module/security/Sign;->sign([Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
