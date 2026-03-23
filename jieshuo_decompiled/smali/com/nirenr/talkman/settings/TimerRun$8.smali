.class Lcom/nirenr/talkman/settings/TimerRun$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/TimerRun;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/nirenr/talkman/settings/TimerRun;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/TimerRun;I)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/TimerRun$8;->b:Lcom/nirenr/talkman/settings/TimerRun;

    iput p2, p0, Lcom/nirenr/talkman/settings/TimerRun$8;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/nirenr/talkman/settings/TimerRun$8;->b:Lcom/nirenr/talkman/settings/TimerRun;

    invoke-static {p1}, Lcom/nirenr/talkman/settings/TimerRun;->b(Lcom/nirenr/talkman/settings/TimerRun;)Landroid/widget/ArrayListAdapter;

    move-result-object p1

    iget p2, p0, Lcom/nirenr/talkman/settings/TimerRun$8;->a:I

    invoke-virtual {p1, p2}, Landroid/widget/ArrayListAdapter;->remove(I)V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/TimerRun$8;->b:Lcom/nirenr/talkman/settings/TimerRun;

    invoke-static {p1}, Lcom/nirenr/talkman/settings/TimerRun;->a(Lcom/nirenr/talkman/settings/TimerRun;)Lorg/json/JSONArray;

    move-result-object p1

    iget p2, p0, Lcom/nirenr/talkman/settings/TimerRun$8;->a:I

    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    return-void
.end method
