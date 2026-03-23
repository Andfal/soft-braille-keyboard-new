.class final enum Lb1/b$b;
.super Lb1/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb1/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lb1/b;-><init>(Ljava/lang/String;ILjava/lang/String;Lb1/b$a;)V

    return-void
.end method


# virtual methods
.method public c()[Lb1/c;
    .locals 1

    invoke-static {}, Lb1/c;->e()[Lb1/c;

    move-result-object v0

    return-object v0
.end method
