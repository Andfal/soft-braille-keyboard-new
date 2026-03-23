.class Lcom/nirenr/talkman/settings/TimerManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/TimerManager;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Landroid/view/MenuItem;

.field final synthetic c:Lcom/nirenr/talkman/settings/TimerManager$TimerAdapter2;

.field final synthetic d:Lcom/nirenr/talkman/settings/TimerManager;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/TimerManager;Ljava/util/ArrayList;Landroid/view/MenuItem;Lcom/nirenr/talkman/settings/TimerManager$TimerAdapter2;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/TimerManager$2;->d:Lcom/nirenr/talkman/settings/TimerManager;

    iput-object p2, p0, Lcom/nirenr/talkman/settings/TimerManager$2;->a:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/nirenr/talkman/settings/TimerManager$2;->b:Landroid/view/MenuItem;

    iput-object p4, p0, Lcom/nirenr/talkman/settings/TimerManager$2;->c:Lcom/nirenr/talkman/settings/TimerManager$TimerAdapter2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 12

    iget-object p1, p0, Lcom/nirenr/talkman/settings/TimerManager$2;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object p1, p0, Lcom/nirenr/talkman/settings/TimerManager$2;->b:Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/nirenr/talkman/settings/TimerManager$2;->d:Lcom/nirenr/talkman/settings/TimerManager;

    invoke-static {v2}, Lcom/nirenr/talkman/settings/TimerManager;->b(Lcom/nirenr/talkman/settings/TimerManager;)Ljava/text/SimpleDateFormat;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    new-instance p1, Ljava/util/GregorianCalendar;

    invoke-direct {p1}, Ljava/util/GregorianCalendar;-><init>()V

    const-wide/16 v2, 0x64

    const/16 v4, 0xe

    const/16 v5, 0xd

    const/16 v6, 0xc

    const/16 v7, 0xb

    const/4 v8, 0x1

    const/4 v9, 0x5

    const/4 v10, 0x0

    cmp-long v11, v0, v2

    if-lez v11, :cond_0

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {p1, v9, v8}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p1, v7, v10}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p1, v6, v10}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p1, v5, v10}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p1, v4, v10}, Ljava/util/Calendar;->set(II)V

    const/4 p2, 0x2

    invoke-virtual {p1, p2, v8}, Ljava/util/GregorianCalendar;->add(II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/settings/TimerManager$2;->b:Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/nirenr/talkman/settings/TimerManager$2;->c:Lcom/nirenr/talkman/settings/TimerManager$TimerAdapter2;

    invoke-virtual {v1, p2}, Lcom/nirenr/talkman/settings/TimerManager$TimerAdapter2;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {p1, v7, v10}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p1, v6, v10}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p1, v5, v10}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p1, v4, v10}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/nirenr/talkman/settings/TimerManager$2;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    neg-long v0, v0

    long-to-int p2, v0

    invoke-virtual {p1, v9, p2}, Ljava/util/GregorianCalendar;->add(II)V

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1, v9, v8}, Ljava/util/GregorianCalendar;->add(II)V

    :goto_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    iget-object v2, p0, Lcom/nirenr/talkman/settings/TimerManager$2;->d:Lcom/nirenr/talkman/settings/TimerManager;

    invoke-static {v2, v0, v1, p1, p2}, Lcom/nirenr/talkman/settings/TimerManager;->g(Lcom/nirenr/talkman/settings/TimerManager;JJ)V

    return-void
.end method
