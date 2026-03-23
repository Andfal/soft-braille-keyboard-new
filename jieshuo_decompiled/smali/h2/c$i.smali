.class Lh2/c$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh2/c;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lh2/c;


# direct methods
.method constructor <init>(Lh2/c;)V
    .locals 0

    iput-object p1, p0, Lh2/c$i;->a:Lh2/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    new-instance p1, Lcom/nirenr/talkman/dialog/f;

    iget-object v0, p0, Lh2/c$i;->a:Lh2/c;

    invoke-static {v0}, Lh2/c;->g(Lh2/c;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    iget-object v1, p0, Lh2/c$i;->a:Lh2/c;

    invoke-static {v1}, Lh2/c;->h(Lh2/c;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/nirenr/talkman/dialog/f;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nirenr/talkman/dialog/f;->q()V

    return-void
.end method
