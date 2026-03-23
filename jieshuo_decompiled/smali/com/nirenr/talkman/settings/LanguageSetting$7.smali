.class Lcom/nirenr/talkman/settings/LanguageSetting$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/LanguageSetting;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ArrayListAdapter;

.field final synthetic b:Landroid/app/AlertDialog;

.field final synthetic c:Lcom/nirenr/talkman/settings/LanguageSetting;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/LanguageSetting;Landroid/widget/ArrayListAdapter;Landroid/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/LanguageSetting$7;->c:Lcom/nirenr/talkman/settings/LanguageSetting;

    iput-object p2, p0, Lcom/nirenr/talkman/settings/LanguageSetting$7;->a:Landroid/widget/ArrayListAdapter;

    iput-object p3, p0, Lcom/nirenr/talkman/settings/LanguageSetting$7;->b:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/nirenr/talkman/settings/LanguageSetting$7;->a:Landroid/widget/ArrayListAdapter;

    invoke-virtual {p1, p3}, Landroid/widget/ArrayListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p2, p0, Lcom/nirenr/talkman/settings/LanguageSetting$7;->c:Lcom/nirenr/talkman/settings/LanguageSetting;

    invoke-static {p2, p1}, Lcom/nirenr/talkman/settings/LanguageSetting;->f(Lcom/nirenr/talkman/settings/LanguageSetting;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/LanguageSetting$7;->b:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
