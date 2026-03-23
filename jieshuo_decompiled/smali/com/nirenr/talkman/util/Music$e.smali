.class Lcom/nirenr/talkman/util/Music$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/util/Music$PlayList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nirenr/talkman/util/Music;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lc2/c$b;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field final synthetic c:Lcom/nirenr/talkman/util/Music;


# direct methods
.method public constructor <init>(Lcom/nirenr/talkman/util/Music;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lc2/c$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nirenr/talkman/util/Music$e;->c:Lcom/nirenr/talkman/util/Music;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/nirenr/talkman/util/Music$e;->b:I

    iput-object p2, p0, Lcom/nirenr/talkman/util/Music$e;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getNameList()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/nirenr/talkman/util/Music$e;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc2/c$b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lc2/c$b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lc2/c$b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getUrlList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/nirenr/talkman/util/Music$e;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc2/c$b;

    invoke-virtual {v2}, Lc2/c$b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public hasNext()Z
    .locals 3

    iget v0, p0, Lcom/nirenr/talkman/util/Music$e;->b:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/nirenr/talkman/util/Music$e;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    iget v0, p0, Lcom/nirenr/talkman/util/Music$e;->b:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOk()Z
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/util/Music$e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public length()I
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/util/Music$e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public next()V
    .locals 4

    invoke-virtual {p0}, Lcom/nirenr/talkman/util/Music$e;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nirenr/talkman/util/Music$e;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nirenr/talkman/util/Music$e;->b:I

    iget-object v1, p0, Lcom/nirenr/talkman/util/Music$e;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc2/c$b;

    iget-object v1, p0, Lcom/nirenr/talkman/util/Music$e;->c:Lcom/nirenr/talkman/util/Music;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lc2/c$b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lc2/c$b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/nirenr/talkman/util/Music;->d(Lcom/nirenr/talkman/util/Music;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nirenr/talkman/util/Music$e;->c:Lcom/nirenr/talkman/util/Music;

    invoke-virtual {v0}, Lc2/c$b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nirenr/talkman/util/Music;->m(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public previous()V
    .locals 4

    invoke-virtual {p0}, Lcom/nirenr/talkman/util/Music$e;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nirenr/talkman/util/Music$e;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/nirenr/talkman/util/Music$e;->b:I

    iget-object v1, p0, Lcom/nirenr/talkman/util/Music$e;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc2/c$b;

    iget-object v1, p0, Lcom/nirenr/talkman/util/Music$e;->c:Lcom/nirenr/talkman/util/Music;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lc2/c$b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lc2/c$b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/nirenr/talkman/util/Music;->d(Lcom/nirenr/talkman/util/Music;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nirenr/talkman/util/Music$e;->c:Lcom/nirenr/talkman/util/Music;

    invoke-virtual {v0}, Lc2/c$b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nirenr/talkman/util/Music;->m(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setIdx(I)V
    .locals 0

    iput p1, p0, Lcom/nirenr/talkman/util/Music$e;->b:I

    return-void
.end method
