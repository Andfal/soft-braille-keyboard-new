.class Lcom/nirenr/talkman/util/Music$d;
.super Lcom/androlua/util/AsyncTaskX;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/util/Music;->p(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androlua/util/AsyncTaskX<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/util/ArrayList<",
        "Lc2/c$b;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/util/Music;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/util/Music;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/util/Music$d;->a:Lcom/nirenr/talkman/util/Music;

    invoke-direct {p0}, Lcom/androlua/util/AsyncTaskX;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/nirenr/talkman/util/Music$d;->f([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method protected varargs f([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lc2/c$b;",
            ">;"
        }
    .end annotation

    new-instance v0, Lc2/c;

    invoke-direct {v0}, Lc2/c;-><init>()V

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Lc2/c;->e(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method protected g(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lc2/c$b;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/androlua/util/AsyncTaskX;->onPostExecute(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/nirenr/talkman/util/Music$d;->a:Lcom/nirenr/talkman/util/Music;

    const-string v0, "\u641c\u7d22\u6b4c\u66f2\u51fa\u9519"

    invoke-static {p1, v0}, Lcom/nirenr/talkman/util/Music;->d(Lcom/nirenr/talkman/util/Music;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/util/Music$d;->a:Lcom/nirenr/talkman/util/Music;

    new-instance v1, Lcom/nirenr/talkman/util/Music$e;

    invoke-direct {v1, v0, p1}, Lcom/nirenr/talkman/util/Music$e;-><init>(Lcom/nirenr/talkman/util/Music;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/util/Music;->s(Lcom/nirenr/talkman/util/Music$PlayList;)V

    iget-object p1, p0, Lcom/nirenr/talkman/util/Music$d;->a:Lcom/nirenr/talkman/util/Music;

    invoke-virtual {p1}, Lcom/nirenr/talkman/util/Music;->j()Z

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/nirenr/talkman/util/Music$d;->g(Ljava/util/ArrayList;)V

    return-void
.end method
