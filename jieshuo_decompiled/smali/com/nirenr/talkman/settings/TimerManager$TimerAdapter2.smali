.class Lcom/nirenr/talkman/settings/TimerManager$TimerAdapter2;
.super Landroid/widget/ArrayListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nirenr/talkman/settings/TimerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimerAdapter2"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayListAdapter<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/nirenr/talkman/settings/TimerManager;


# direct methods
.method public constructor <init>(Lcom/nirenr/talkman/settings/TimerManager;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nirenr/talkman/settings/TimerManager$TimerAdapter2;->b:Lcom/nirenr/talkman/settings/TimerManager;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/Object;

    invoke-direct {p0, p2, p1}, Landroid/widget/ArrayListAdapter;-><init>(Landroid/content/Context;[Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/nirenr/talkman/settings/TimerManager$TimerAdapter2;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItem(I)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/nirenr/talkman/settings/TimerManager$TimerAdapter2;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x64

    cmp-long v5, v1, v3

    if-gez v5, :cond_3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/nirenr/talkman/settings/c;->a(J)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/nirenr/talkman/settings/TimerManager$TimerAdapter2;->b:Lcom/nirenr/talkman/settings/TimerManager;

    const v0, 0x7f070075

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/nirenr/talkman/settings/TimerManager$TimerAdapter2;->b:Lcom/nirenr/talkman/settings/TimerManager;

    const v0, 0x7f07098d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object p1, p0, Lcom/nirenr/talkman/settings/TimerManager$TimerAdapter2;->b:Lcom/nirenr/talkman/settings/TimerManager;

    const v0, 0x7f07068b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/nirenr/talkman/settings/TimerManager$TimerAdapter2;->b:Lcom/nirenr/talkman/settings/TimerManager;

    invoke-static {v0}, Lcom/nirenr/talkman/settings/TimerManager;->b(Lcom/nirenr/talkman/settings/TimerManager;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/settings/TimerManager$TimerAdapter2;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
