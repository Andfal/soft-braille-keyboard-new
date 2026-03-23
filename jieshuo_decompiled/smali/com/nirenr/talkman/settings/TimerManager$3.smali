.class Lcom/nirenr/talkman/settings/TimerManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/TimerManager;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/nirenr/talkman/settings/TimerManager;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/TimerManager;I)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/TimerManager$3;->b:Lcom/nirenr/talkman/settings/TimerManager;

    iput p2, p0, Lcom/nirenr/talkman/settings/TimerManager$3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/nirenr/talkman/settings/TimerManager$3;->b:Lcom/nirenr/talkman/settings/TimerManager;

    invoke-static {p2}, Lcom/nirenr/talkman/settings/TimerManager;->c(Lcom/nirenr/talkman/settings/TimerManager;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/nirenr/talkman/settings/TimerManager$3;->b:Lcom/nirenr/talkman/settings/TimerManager;

    invoke-static {v0}, Lcom/nirenr/talkman/settings/TimerManager;->f(Lcom/nirenr/talkman/settings/TimerManager;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/nirenr/talkman/settings/TimerManager$3;->a:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p1, p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/nirenr/talkman/settings/TimerManager$3;->b:Lcom/nirenr/talkman/settings/TimerManager;

    invoke-static {p1}, Lcom/nirenr/talkman/settings/TimerManager;->e(Lcom/nirenr/talkman/settings/TimerManager;)J

    move-result-wide v0

    iget-object p2, p0, Lcom/nirenr/talkman/settings/TimerManager$3;->b:Lcom/nirenr/talkman/settings/TimerManager;

    invoke-static {p2}, Lcom/nirenr/talkman/settings/TimerManager;->d(Lcom/nirenr/talkman/settings/TimerManager;)J

    move-result-wide v2

    invoke-static {p1, v0, v1, v2, v3}, Lcom/nirenr/talkman/settings/TimerManager;->g(Lcom/nirenr/talkman/settings/TimerManager;JJ)V

    :cond_0
    return-void
.end method
