.class Lcom/nirenr/talkman/dialog/VirtualScreen$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/dialog/VirtualScreen;->n(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/nirenr/talkman/dialog/VirtualScreen;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/dialog/VirtualScreen;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/VirtualScreen$h;->b:Lcom/nirenr/talkman/dialog/VirtualScreen;

    iput-object p2, p0, Lcom/nirenr/talkman/dialog/VirtualScreen$h;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/VirtualScreen$h;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/VirtualScreen$h;->b:Lcom/nirenr/talkman/dialog/VirtualScreen;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0703ba

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "continuous_recognition"

    invoke-static {p1, v1, v0}, Lh2/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p2}, Lcom/nirenr/talkman/dialog/VirtualScreen;->g(Z)V

    return-void
.end method
