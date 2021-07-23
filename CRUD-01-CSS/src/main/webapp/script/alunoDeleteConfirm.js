/**
 * delete confirm aluno
 */

function deleteConfirm(id) {
	var deleteIdAluno = confirm("Deseja excluir id = " + id + " ??");
	if (deleteIdAluno === true) {
		location.href = "aluControll?action=deleteAluno&idAluno=" + id;
	}
}