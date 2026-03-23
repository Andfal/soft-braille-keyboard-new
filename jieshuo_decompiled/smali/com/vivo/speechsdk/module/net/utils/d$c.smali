.class Lcom/vivo/speechsdk/module/net/utils/d$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/speechsdk/module/net/utils/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# static fields
.field private static final f:I = 0xf


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivo/speechsdk/module/net/utils/d$c;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/utils/d$c;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xf

    if-gt v0, v1, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    const/16 p1, 0x8

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "id="

    aput-object v1, p1, v0

    iget v0, p0, Lcom/vivo/speechsdk/module/net/utils/d$c;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p1, v1

    const/4 v0, 0x2

    const-string v1, " transport="

    aput-object v1, p1, v0

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/utils/d$c;->b:Ljava/lang/String;

    const/4 v1, 0x3

    aput-object v0, p1, v1

    const/4 v0, 0x4

    const-string v1, " reason="

    aput-object v1, p1, v0

    const/4 v0, 0x5

    aput-object p2, p1, v0

    const/4 p2, 0x6

    const-string v0, " signal="

    aput-object v0, p1, p2

    iget-object p2, p0, Lcom/vivo/speechsdk/module/net/utils/d$c;->e:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x7

    aput-object p2, p1, v0

    invoke-static {p1}, Lcom/vivo/speechsdk/common/utils/StringUtils;->concat([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "NetworkState"

    invoke-static {p2, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/utils/d$c;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method
