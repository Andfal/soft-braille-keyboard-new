.class Lcom/nirenr/talkman/settings/TimerManager$TimerAdapter;
.super Landroid/widget/ArrayListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nirenr/talkman/settings/TimerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimerAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayListAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/settings/TimerManager;


# direct methods
.method public constructor <init>(Lcom/nirenr/talkman/settings/TimerManager;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nirenr/talkman/settings/TimerManager$TimerAdapter;->a:Lcom/nirenr/talkman/settings/TimerManager;

    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lcom/nirenr/talkman/settings/TimerManager;Landroid/content/Context;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/TimerManager$TimerAdapter;->a:Lcom/nirenr/talkman/settings/TimerManager;

    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayListAdapter;-><init>(Landroid/content/Context;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/nirenr/talkman/settings/TimerManager$TimerAdapter;->getItem(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/nirenr/talkman/settings/TimerManager$TimerAdapter;->a:Lcom/nirenr/talkman/settings/TimerManager;

    invoke-static {v0}, Lcom/nirenr/talkman/settings/TimerManager;->c(Lcom/nirenr/talkman/settings/TimerManager;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/settings/TimerManager$TimerAdapter;->a:Lcom/nirenr/talkman/settings/TimerManager;

    invoke-static {v1}, Lcom/nirenr/talkman/settings/TimerManager;->f(Lcom/nirenr/talkman/settings/TimerManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nirenr/talkman/o;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/nirenr/talkman/o$b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/nirenr/talkman/settings/TimerManager$TimerAdapter;->a:Lcom/nirenr/talkman/settings/TimerManager;

    invoke-static {v2}, Lcom/nirenr/talkman/settings/TimerManager;->a(Lcom/nirenr/talkman/settings/TimerManager;)Ljava/text/SimpleDateFormat;

    move-result-object v2

    invoke-super {p0, p1}, Landroid/widget/ArrayListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nirenr/talkman/o$b;->d()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/nirenr/talkman/o$b;->d()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {v0}, Lcom/nirenr/talkman/o$b;->d()Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
