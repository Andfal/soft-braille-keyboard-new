.class Lcom/nirenr/talkman/dialog/d$e$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/dialog/d$e;->g(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/dialog/d$e;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/dialog/d$e;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/d$e$c;->a:Lcom/nirenr/talkman/dialog/d$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/d$e$c;->a:Lcom/nirenr/talkman/dialog/d$e;

    iget-object p1, p1, Lcom/nirenr/talkman/dialog/d$e;->a:Lcom/nirenr/talkman/dialog/d;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/d;->a(Lcom/nirenr/talkman/dialog/d;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    new-instance p1, Landroid/widget/GridView;

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/d$e$c;->a:Lcom/nirenr/talkman/dialog/d$e;

    iget-object v0, v0, Lcom/nirenr/talkman/dialog/d$e;->a:Lcom/nirenr/talkman/dialog/d;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/d;->c(Lcom/nirenr/talkman/dialog/d;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/androlua/SingleLineAdapter;

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/d$e$c;->a:Lcom/nirenr/talkman/dialog/d$e;

    iget-object v1, v1, Lcom/nirenr/talkman/dialog/d$e;->a:Lcom/nirenr/talkman/dialog/d;

    invoke-static {v1}, Lcom/nirenr/talkman/dialog/d;->c(Lcom/nirenr/talkman/dialog/d;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/d$e$c;->a:Lcom/nirenr/talkman/dialog/d$e;

    iget-object v2, v2, Lcom/nirenr/talkman/dialog/d$e;->a:Lcom/nirenr/talkman/dialog/d;

    invoke-static {v2}, Lcom/nirenr/talkman/dialog/d;->c(Lcom/nirenr/talkman/dialog/d;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androlua/LuaService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f010022

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f050007

    invoke-direct {v0, v1, v3, v2}, Lcom/androlua/SingleLineAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setNumColumns(I)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/d$e$c;->a:Lcom/nirenr/talkman/dialog/d$e;

    iget-object v1, v1, Lcom/nirenr/talkman/dialog/d$e;->a:Lcom/nirenr/talkman/dialog/d;

    invoke-static {v1}, Lcom/nirenr/talkman/dialog/d;->c(Lcom/nirenr/talkman/dialog/d;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/nirenr/talkman/dialog/d$e$c$b;

    invoke-direct {v1, p0}, Lcom/nirenr/talkman/dialog/d$e$c$b;-><init>(Lcom/nirenr/talkman/dialog/d$e$c;)V

    const v2, 0x7f070260

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070095

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/nirenr/talkman/dialog/d$e$c$a;

    invoke-direct {v1, p0}, Lcom/nirenr/talkman/dialog/d$e$c$a;-><init>(Lcom/nirenr/talkman/dialog/d$e$c;)V

    const v2, 0x7f070252

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-static {v0}, Lh2/i;->b(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/nirenr/talkman/dialog/d$e$c$c;

    invoke-direct {v1, p0, v0}, Lcom/nirenr/talkman/dialog/d$e$c$c;-><init>(Lcom/nirenr/talkman/dialog/d$e$c;Landroid/app/AlertDialog;)V

    invoke-virtual {p1, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method
